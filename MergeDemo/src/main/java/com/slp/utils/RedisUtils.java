package com.slp.utils;

import org.apache.commons.lang3.time.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.util.Assert;

import java.util.Date;
import java.util.Set;
import java.util.concurrent.TimeUnit;


public class RedisUtils {

	private static Logger logger = LoggerFactory.getLogger(RedisUtils.class);

	/**
	 * 在redis中配置信息对应如下的key值：
	 * <p>
	 * VPAY:VCWEIXIN:ACCESSTOKEN:[company]
	 * <p>
	 * 
	 */
	private static String PREFIX_KEY_WEIXIN = "slp:";
	/**
	 * token 在redis 中的有效期 （单位 分）
	 */
	private static int EXPIRE_MINUTES = 30;

	/**
	 * 获取redis值
	 * 
	 * @param key
	 *            键
	 * @return 值
	 */
	public static String get(String key) {
		Assert.hasText(key, "redis get key cannot null");

		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");
		ValueOperations<String, String> ofv = redisTemplate.opsForValue();

		return ofv.get(PREFIX_KEY_WEIXIN + key);
	}

	/**
	 * 删除redis键
	 * 
	 * @param key
	 *            键
	 */
	public static void delete(String key) {
		Assert.hasText(key, "redis delete key cannot null");

		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");

		redisTemplate.delete(PREFIX_KEY_WEIXIN + key);
	}

	/**
	 * 获取所有key
	 * 
	 * @return 所有key
	 */
	public static Set<String> getAllKey() {
		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");

		return redisTemplate.keys("*");
	}

	/**
	 * 设置redis值
	 * 
	 * @param key
	 *            键
	 * @param value
	 *            值
	 */
	public static void set(String key, String value) {
		Assert.hasText(key, "redis set key cannot null");
		Assert.hasText(value, "redis set value cannot null");

		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");
		ValueOperations<String, String> ofv = redisTemplate.opsForValue();
		ofv.set(PREFIX_KEY_WEIXIN + key, value);

		redisTemplate.expireAt(PREFIX_KEY_WEIXIN + key, DateUtils.addMinutes(new Date(), EXPIRE_MINUTES));
	}

	/**
	 * 设置redis值
	 * 
	 * @param key
	 *            键
	 * @param value
	 *            值
	 * @param time
	 *            时间（分钟） 如果小于0 默认为1分钟
	 */
	public static void set(String key, String value, int time) {
		Assert.hasText(key, "redis set key cannot null");
		Assert.hasText(value, "redis set value cannot null");

		if (time <= 0) {
			time = 1;
		}
		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");
		ValueOperations<String, String> ofv = redisTemplate.opsForValue();
		ofv.set(PREFIX_KEY_WEIXIN + key, value);

		redisTemplate.expireAt(PREFIX_KEY_WEIXIN + key, DateUtils.addMinutes(new Date(), time));
	}

	/**
	 * 将value对象写入缓存
	 * 
	 * @Description (TODO这里用一句话描述这个方法的作用)
	 * @param key
	 * @param value
	 * @param time
	 *            单位秒
	 * @author: zhangj
	 * @Date 2017年5月9日 下午1:51:41
	 */
	public static void setValue(String key, String value, int time) {
		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");
		redisTemplate.opsForValue().set(key, value, 10, TimeUnit.SECONDS);
	}

	/**
	 * 检查key 是否存在
	 * 
	 * @Description (TODO这里用一句话描述这个方法的作用)
	 * @param key
	 * @return
	 * @author: zhangj
	 * @Date 2017年5月9日 下午1:51:16
	 */
	public static boolean hasKey(String key) {
		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");
		return redisTemplate.hasKey(key);
	}

	/**
	 * 通用设置redis值，没有前缀，成功返回true，失败返回false
	 * 
	 * @param key
	 *            键
	 * @param value
	 *            值
	 * @param time
	 *            时间（分钟） 如果小于0 默认为1分钟
	 */
	public static boolean commonSet(String key, String value, int time) {
		Assert.hasText(key, "redis set key cannot null");
		Assert.hasText(value, "redis set value cannot null");

		if (time <= 0) {
			time = 1;
		}
		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");
		ValueOperations<String, String> ofv = redisTemplate.opsForValue();

		try {
			ofv.set(key, value);
			redisTemplate.expireAt(key, DateUtils.addMinutes(new Date(), time));
		} catch (Exception e) {
			logger.error("Exception", e);
			return false;
		}

		return true;
	}

	/**
	 * 通用获取redis值，没有前缀，如果从redis获取失败，将会返回null
	 * 
	 * @param key
	 *            键
	 * @return 值
	 */
	public static String commonGet(String key) {
		Assert.hasText(key, "redis get key cannot null");

		ApplicationContext context = ApplicationContextHolder.getContext();
		RedisTemplate<String, String> redisTemplate = (StringRedisTemplate) context.getBean("redisTemplate");
		ValueOperations<String, String> ofv = redisTemplate.opsForValue();

		String value = null;
		try {
			value = ofv.get(key);
		} catch (Exception e) {
			logger.error("Exception", e);
			return value;
		}

		return value;
	}

}
