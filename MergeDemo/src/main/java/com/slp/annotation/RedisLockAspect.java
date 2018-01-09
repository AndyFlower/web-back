package com.slp.annotation;

import com.alibaba.fastjson.JSONObject;
import com.slp.cache.redis.RedisKeyConstants;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;


@Component
public class RedisLockAspect {
	private final static Logger logger = LoggerFactory.getLogger(RedisLockAspect.class);
	
	protected static final String XML_TYPE = "xml";
	protected static final String JSON_TYPE = "json";
	protected static final String ILLEGAL_TYPE = "illegal type";
	//@Autowired
	//private RedisService redisService;
	
	public Object redisLockParse(ProceedingJoinPoint p) throws Throwable{
		Signature signature = p.getSignature();
		boolean isRepetition = false;
		RedisLockBean redisLockBean = null;
		String value = System.nanoTime()+"";
		if(signature instanceof MethodSignature){
			//获得接口中定义的方法的Method,但注解时加载实现类中方法的参数上
			MethodSignature methodSignature = (MethodSignature)signature;
			Method serviceMethod = methodSignature.getMethod();
			
			try {
				Method serviceImpMethod = p.getTarget().getClass().getMethod(serviceMethod.getName(), serviceMethod.getParameterTypes());
				//获取key值
				redisLockBean = getRedisLockKey(p.getTarget(),serviceImpMethod,p.getArgs());
				//成功获取key值,在redis中加锁
				if(redisLockBean!=null){
					logger.info("redis lock value is :{}",value);
					boolean isPutSuccess =false;//=redisService.setIfAbsent(redisLockBean.getKey(), value, redisLockBean.getTimeInSecond());
					//加锁失败，直接返回
					if(!isPutSuccess){
						logger.info("get redis lock fail for {}",redisLockBean.getKey());
						if(redisLockBean.isAtParameter()||redisLockBean.isAtService()){
							Class<?> returnType = serviceImpMethod.getReturnType();
							//加锁方法有返回值
							if(!returnType.getName().equals(Void.class.getName())){
								//实例化返回值对象
								try {
									Object result = returnType.newInstance();
									//设置返回码
									returnType.getMethod(getSetMethodNameByFieldName(redisLockBean.getCodeName()), String.class).invoke(result, redisLockBean.getCode());
									//设置返回信息
									returnType.getMethod(getSetMethodNameByFieldName(redisLockBean.getMsgName()), String.class).invoke(result, redisLockBean.getMsg());
									return result;
								} catch (InstantiationException e) {
									e.printStackTrace();
								} catch (IllegalAccessException e) {
									e.printStackTrace();
								} catch (IllegalArgumentException e) {
									e.printStackTrace();
								} catch (InvocationTargetException e) {
									e.printStackTrace();
								}
							}else{
								throw new RuntimeException("@RedisLock作用的方法没有返回参数");
							}
						}else if(redisLockBean.isAtController()){
							Map<String,String> result = new HashMap<String,String>();
							result.put(redisLockBean.getCodeName(), redisLockBean.getCode());
							result.put(redisLockBean.getMsgName(), redisLockBean.getMsg());
							return response(redisLockBean.getReturnType()==null?"json":redisLockBean.getReturnType(), result);
						}
					}else{
						logger.info("get redis lock success for {}",redisLockBean.getKey());
						isRepetition = true;
					}
				}
			} catch (NoSuchMethodException e) {
				e.printStackTrace();
			} catch (SecurityException e) {
				e.printStackTrace();
			}
		}
		Object result = null;
		try {
			result = p.proceed();
		} catch (Throwable e) {
			throw e;
		}finally{
			if(redisLockBean!=null){
				//if(isRepetition&&value.equals(redisService.get(redisLockBean.getKey()))){
					logger.info("lock has released :{}",redisLockBean.getKey());
					//redisService.delete(redisLockBean.getKey());
				//}
				
			}
		}
		return result;
	}
	
	private RedisLockBean getRedisLockKey(Object target,Method method,Object... object){
		if(target == null){
			throw new RuntimeException("get redis lock key error,target is null");
		}
		if(method==null){
			throw new RuntimeException("get redis lock key error,method is null");
		}
		List<String> fieldValueList = new ArrayList<String>();
		RedisLockBean redisLockBean = new RedisLockBean();
		RedisLock redisLock = null;
		//类上有@Controller说明@RedisLock是放在请求方法上,使用HttpServletRequest获取请求参数
		if(method.isAnnotationPresent(RedisLock.class)&&target.getClass().isAnnotationPresent(Controller.class)){
			//controller层方法时对外开放的接口
			if(method.isAnnotationPresent(RequestMapping.class)){
				redisLock = method.getAnnotation(RedisLock.class);
				//获取方法中的HttpServletRequest类型的参数
				HttpServletRequest request = null;
				for(Object para:object){
					if(para instanceof HttpServletRequest){
						request = (HttpServletRequest)para;
						break;
					}
				}
				if(request==null){
					throw new RuntimeException("@RedisLock作用于controller层方法时，方法需要包含HttpServletRequest类型的参数");
				}
				//未定义加锁参数时，默认使用mac
				String[] paraName = redisLock.fieldName();
				if(paraName==null||paraName.length==0){
					paraName=new String[]{"mac"};
				}
				for(String para:paraName){
					fieldValueList.add(request.getParameter(para));
				}
				if(fieldValueList.isEmpty()){
					throw new RuntimeException("@RedisLock作用于controller层方法时，生成key失败，请求中没有mac签名");
				}
				//标示注解作用在controller成方法上
				redisLockBean.setAtController(true);
			}else{
				throw new RuntimeException("@RedisLock作用于controller层的方法时，该方法上需要使用@RequestMapping注解");
			}
			//注解作用于非controller层方法上
		}else if(method.isAnnotationPresent(RedisLock.class)){
			redisLock = method.getAnnotation(RedisLock.class);
			//参数的索引位置
			int index = redisLock.paramIndex();
			String[] fieldName = redisLock.fieldName();
			String[] values = getFieldValue(object[index],fieldName);
			//注解的参数时基本的数据类型或String,不需要传入属性名称，否则设置的属性,都必须获得该属性值
			if(values==null || values.length!=fieldName.length && fieldName.length>0){
				return null;
			}
			fieldValueList.addAll(Arrays.asList(values));
			redisLockBean.setAtService(true);
		}else{
			Annotation[][] annotations;
			annotations = method.getParameterAnnotations();
			for(int i=0;i<annotations.length;i++){
				for(Annotation annotation:annotations[i]){
					if(annotation instanceof RedisLock){
						RedisLock redisLockTmp = (RedisLock)annotation;
						if(redisLock==null){
							redisLock = redisLockTmp;
						}
						String[] fieldName = redisLockTmp.fieldName();
						String[] values = getFieldValue(object[i],fieldName);
						//注解的参数时基本的数据类型或String,不需要传入属性名称，否则设置的属性,都必须获得该属性值
						if(values==null || values.length!=fieldName.length && fieldName.length>0){
							return null;
						}
						fieldValueList.addAll(Arrays.asList(values));
						redisLockBean.setAtParameter(true);
					}
				}
			}			
		}
		//未使用注解
		if(fieldValueList.isEmpty()){
			return null;
		}
		
		//设置其它参数值
		if(redisLockBean.getTimeInSecond()==0){
			redisLockBean.setTimeInSecond(redisLock.timeInSecond());
		}
		if(StringUtils.isEmpty(redisLockBean.getCodeName())){
			redisLockBean.setCodeName(redisLock.codeName());
		}
		if(StringUtils.isEmpty(redisLockBean.getCode())){
			redisLockBean.setCode(redisLock.code());
		}
		if(StringUtils.isEmpty(redisLockBean.getMsgName())){
			redisLockBean.setMsgName(redisLock.msgName());
		}
		if(StringUtils.isEmpty(redisLockBean.getMsg())){
			redisLockBean.setMsg(redisLock.msg());
		}
		
		Collections.sort(fieldValueList);
		logger.info("all value of fieldName is {}",fieldValueList);
		//生成key值
		StringBuilder builder = new StringBuilder();
		builder.append(target.getClass().getName())
		.append("-")
		.append(method.getName())
		.append("-")
		.append(Arrays.asList(method.getParameterTypes()))
		.append("-")
		.append(fieldValueList);
		String lockKey = RedisKeyConstants.REDIS_LOCK + builder.toString();
		logger.info("redis lock key is :{}",builder.toString());
		redisLockBean.setKey(lockKey);
		logger.info("redisLockBean :{}",redisLockBean.toString());
		return redisLockBean;
	}
	private String[] getFieldValue(Object argObj,String...fieldName){
		if(fieldName ==null || fieldName.length == 0){
			return new String[]{getBaseClassValue(argObj)};
		}
		List<String> fieldsValue = new ArrayList<String>();
		for(String field:fieldName){
			String value = getFieldValue(argObj,field);
			logger.info("value of fieldName '{}' is :{}",fieldName,value);
			if(value!=null){
				fieldsValue.add(value);
			}
		}
		return fieldsValue.toArray(new String[0]);
	}
	private String getFieldValue(Object argObj,String fieldName){
		if(argObj==null){
			throw new RuntimeException("argObj is null,cannot get field value of fieldName");
		}
		String value = getBaseClassValue(argObj);
		if(!StringUtils.isEmpty(value)){
			return value;
		}
		String methodName = getGetMethodValueByFieldName(fieldName);
		Object result = null;
		try {
			Method method = argObj.getClass().getMethod(methodName);
			result = method.invoke(argObj);
		} catch (NoSuchMethodException e) {
			logger.error("method {} without parameter is not exists!",methodName);
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			logger.error("method {} without parameter is not public!",methodName);
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			logger.error("method {} has parameter!",methodName);
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		if(result==null){
			logger.warn("method {} does not have returnValue",methodName);
			return null;
		}
		return getBaseClassValue(result);
	}
	private String getBaseClassValue(Object object){
		if(object==null){
			throw new RuntimeException("argObj is null,cannot get field value ");
		}
		if(object instanceof String){
			return object.toString();
		}
		if(object instanceof Integer){
			int i = (Integer)object;
			//剔除成员变量的默认值
			if(i!=0){
				return i+"";
			}
		}
		if(object instanceof Long){
			long i = (Long)object;
			if(i!=0){
				return i+"";
			}
		}
		return null;
	}

	private String getGetMethodValueByFieldName(String fieldName){
		return getMethodNameByFieldNameAndPrefix("get",fieldName);
	}
	private String getSetMethodNameByFieldName(String fieldName){
		return getMethodNameByFieldNameAndPrefix("set",fieldName);
	}
	private String getMethodNameByFieldNameAndPrefix(String prefix,String fieldName){
		if(StringUtils.isEmpty(fieldName)){
			throw new RuntimeException("cannot get Get method by null or length is 0");
		}
		if(StringUtils.isEmpty(prefix)){
			throw new RuntimeException("cannot get Get method by null without prefix");
		}
		String getMethodName = prefix+fieldName.substring(0, 1).toUpperCase();
		//fieldName 的长度大于一时，索引大于一的字符不改变大小写
		if(fieldName.length()>1){
			getMethodName = getMethodName + fieldName.substring(1);
		}
		return getMethodName;
	}
	
	private String response(String type, Object obj) {
		if (XML_TYPE.equalsIgnoreCase(type)) {
			String ret = OxmHelper.marshal(obj);
			logger.info("response:{}",ret);
            return ret;
		}
		if (JSON_TYPE.equalsIgnoreCase(type)) {
			String ret = JSONObject.toJSONString(obj);
			logger.info("response:{}",ret);
            return ret;
		}
		return ILLEGAL_TYPE + ":" + type;
	}
}
