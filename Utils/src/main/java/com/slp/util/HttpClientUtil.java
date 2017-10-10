package com.slp.util;

import java.io.IOException;  
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;  
import java.net.URLEncoder;
import java.security.KeyManagementException;  
import java.security.KeyStore;  
import java.security.KeyStoreException;  
import java.security.NoSuchAlgorithmException;  
import java.security.cert.CertificateException;  
import java.security.cert.X509Certificate;  
import java.util.HashMap;
import java.util.Iterator;  
import java.util.Map;  
import java.util.Map.Entry;  
  
import javax.net.ssl.SSLContext;  
  
import net.sf.json.JSONObject;

import org.apache.commons.httpclient.HttpStatus;  
import org.apache.commons.lang.StringUtils;
import org.apache.http.client.config.RequestConfig;  
import org.apache.http.client.methods.CloseableHttpResponse;  
import org.apache.http.client.methods.HttpGet;  
import org.apache.http.client.methods.HttpPost;  
import org.apache.http.config.Registry;  
import org.apache.http.config.RegistryBuilder;  
import org.apache.http.conn.socket.ConnectionSocketFactory;  
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;  
import org.apache.http.conn.socket.PlainConnectionSocketFactory;  
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;  
import org.apache.http.conn.ssl.SSLContexts;  
import org.apache.http.conn.ssl.TrustStrategy;  
import org.apache.http.entity.StringEntity;  
import org.apache.http.impl.client.CloseableHttpClient;  
import org.apache.http.impl.client.HttpClientBuilder;  
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;  
import org.apache.http.util.EntityUtils;  
import org.apache.log4j.Logger;  
  
public class HttpClientUtil {  
    private static Logger logger = Logger.getLogger(HttpClientUtil.class);    //日志记录  
   
    private static CloseableHttpClient getHttpClient() {    
        RegistryBuilder<ConnectionSocketFactory> registryBuilder = RegistryBuilder.<ConnectionSocketFactory>create();    
        ConnectionSocketFactory plainSF = new PlainConnectionSocketFactory();    
        registryBuilder.register("http", plainSF);    
       //指定信任密钥存储对象和连接套接字工厂    
        try {    
            KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType());    
            //信任任何链接    
            TrustStrategy anyTrustStrategy = new TrustStrategy() {  
  
                public boolean isTrusted(X509Certificate[] arg0, String arg1)  
                        throws CertificateException {  
                    return true;  
                }     
            };    
            SSLContext sslContext = SSLContexts.custom().useTLS().loadTrustMaterial(trustStore, anyTrustStrategy).build();    
            LayeredConnectionSocketFactory sslSF = new SSLConnectionSocketFactory(sslContext, SSLConnectionSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);    
            registryBuilder.register("https", sslSF);    
        } catch (KeyStoreException e) {    
            throw new RuntimeException(e);    
        } catch (KeyManagementException e) {    
            throw new RuntimeException(e);    
        } catch (NoSuchAlgorithmException e) {    
            throw new RuntimeException(e);    
        }    
        Registry<ConnectionSocketFactory> registry = registryBuilder.build();    
        //设置连接管理器    
        PoolingHttpClientConnectionManager connManager = new PoolingHttpClientConnectionManager(registry);    
//      connManager.setDefaultConnectionConfig(connConfig);    
//      connManager.setDefaultSocketConfig(socketConfig);    
        //构建客户端    
        return HttpClientBuilder.create().setConnectionManager(connManager).build();    
    }    
      
    
    public static String httpPost(String param,String url,Map<String, String> httpHead) throws Exception{  
          
        CloseableHttpClient httpclient = getHttpClient();  
        //HttpClient httpClient;
        String result = null;  
        try {  
            HttpPost request = new HttpPost(url);  
             //解决中文乱码问题  
            StringEntity entity = new StringEntity(param,  "utf-8");  
            request.setEntity(entity);
            entity.setContentType("application/x-www-form-urlencoded");
            System.out.println(EntityUtils.toString(entity));
            //设置http头参数  
            if(httpHead!=null&&httpHead.size()>0)  
            for(Iterator<Entry<String, String>> ies = httpHead.entrySet().iterator(); ies.hasNext();){  
                    Entry<String, String> entry = ies.next();  
                      
                    String key =entry.getKey();  
                    String value = entry.getValue();  
                      
                    request.addHeader(key, value);  
             }  
                  
            RequestConfig requestConfig = RequestConfig.custom().setSocketTimeout(30000).setConnectTimeout(30000).build();//设置请求和传输超时时间  
            request.setConfig(requestConfig);  
            CloseableHttpResponse response = httpclient.execute(request);  
            System.out.println(response.getStatusLine().getStatusCode());
            url = URLDecoder.decode(url, "UTF-8");  
              
            logger.info("请求接口："+url+",执行状态："+response.getStatusLine().getStatusCode());  
              
            /**请求发送成功，并得到响应**/  
            if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {  
                try {  
                    /**读取服务器返回过来的字符串数据**/  
                    result = EntityUtils.toString(response.getEntity(),"UTF-8");  
                    //System.out.println("result:"+result);  
                } catch (Exception e) {  
                    logger.error("post请求提交失败:" + url, e);  
                } finally {  
                    response.close();  
                }  
            } else {  
                result = response.getStatusLine().getStatusCode()+"-"+response.getStatusLine().getReasonPhrase();  
  
            }  
        } catch (Exception e) {  
            logger.error("post请求提交失败:" + url, e);  
        }finally{  
            httpclient.close();  
        }  
        return result;  
    }  
      
    public static String httpGet(String url ,Map<String ,String > httpHeader) throws IOException{  
        //get请求返回结果  
        CloseableHttpClient httpclient = getHttpClient();  
        String strResult = null;    
        try {  
            //发送get请求  
            HttpGet request = new HttpGet(url);  
              
            //设置http头参数  
            if(httpHeader!=null && httpHeader.size()>0){  
                for(Iterator<Entry<String, String>> ies = httpHeader.entrySet().iterator(); ies.hasNext();){  
                    Entry<String, String> entry = ies.next();  
                    String key =entry.getKey();  
                    String value = entry.getValue();  
                    request.addHeader(key, value);  
                 }  
            }  
            CloseableHttpResponse response = httpclient.execute(request);  
                   
            /**请求发送成功，并得到响应**/  
            if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {  
                try {  
                    /**读取服务器返回过来的json字符串数据**/  
                    strResult = EntityUtils.toString(response.getEntity(),"UTF-8");  
                    url = URLDecoder.decode(url, "UTF-8");  
                }catch(Exception e) {  
                    logger.error("get请求提交失败:" + url);  
                }finally {  
                     response.close();  
                }  
            }  
              
        } catch (IOException e) {  
            logger.error("get请求提交失败:" + url, e);  
        } finally {  
            httpclient.close();  
        }  
        return strResult;  
    }  
    
    
   
    public static String concatHttpParams(Map<String, String> params, String charset) {
        if (params == null) {
            return null;
        }

        StringBuilder sb = new StringBuilder();
        boolean isFirst = false;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (isFirst == false) {
                isFirst = true;
            } else {
                sb.append('&');
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(urlEncode(entry.getValue(), charset));
        }
        return sb.toString();
    }
	
	public static String urlEncode(String url, String charset) {
        try {
            if (StringUtils.isEmpty(url)) {
                return url;
            }
            return URLEncoder.encode(url, charset);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }
	
	public static String httpPost2(String param,String url,Map<String, String> httpHead) throws Exception{  
        
        CloseableHttpClient httpclient = getHttpClient();  
        String result = null;  
        try {  
            HttpPost request = new HttpPost(url);  
             //解决中文乱码问题  
            StringEntity entity = new StringEntity(param,  "utf-8");//new StringEntity(param,  "utf-8");  
           entity.setContentType("application/x-www-form-urlencoded");
            //entity.setContentType("multipart/form-data");
            request.setEntity(entity);  
              System.out.println(entity+"-----------");
            //设置http头参数  
            if(httpHead!=null&&httpHead.size()>0)  
            for(Iterator<Entry<String, String>> ies = httpHead.entrySet().iterator(); ies.hasNext();){  
                    Entry<String, String> entry = ies.next();  
                      
                    String key =entry.getKey();  
                    String value = entry.getValue();  
                      
                    request.addHeader(key, value);  
             }  
                  
            RequestConfig requestConfig = RequestConfig.custom().setSocketTimeout(30000).setConnectTimeout(30000).build();//设置请求和传输超时时间  
            request.setConfig(requestConfig);  
            CloseableHttpResponse response = httpclient.execute(request);  
            System.out.println(response.getStatusLine().getStatusCode());
            url = URLDecoder.decode(url, "UTF-8");  
              
            logger.info("请求接口："+url+",执行状态："+response.getStatusLine().getStatusCode());  
              
            /**请求发送成功，并得到响应**/  
            if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {  
                try {  
                    /**读取服务器返回过来的字符串数据**/  
                    result = EntityUtils.toString(response.getEntity(),"UTF-8");  
                    //System.out.println("result:"+result);  
                } catch (Exception e) {  
                    logger.error("post请求提交失败:" + url, e);  
                } finally {  
                    response.close();  
                }  
            } else {  
                result = response.getStatusLine().getStatusCode()+"-"+response.getStatusLine().getReasonPhrase();  
  
            }  
        } catch (Exception e) {  
            logger.error("post请求提交失败:" + url, e);  
        }finally{  
            httpclient.close();  
        }  
        return result;  
    }  
	
	 public static void main(String[] args) {
			//sign=-e1CYmtQ-2jFnouOvcyaUVHfxZeuA_0Ymh1q8hj5yDN4H2npXc7P8zl7k6m7qj8JqWIn4X1IUxHQqbqa94rTFLtkzJVb7LML2o7MMzTB3a1O9_-tnrgdo_y4TcOR3y_QkMjQcawacJBtoPclR23Quw&
		 //timestamp=1504846322&phone=18081165956&
		 //sp_id=carrefour_001&number=1232135678903245&serial_sn=U5JCm51jcN03Xf6Z0iNF8S4J865G7o88&password=cnrMtfOoNhlg4YoiQwaGxw

	    	Map<String, String> parameters = new HashMap<String, String>();
			parameters.put("sp_id", "carrefour_001");// 商户编号
			parameters.put("serial_sn", "U5JCm51jcN03Xf6Z0iNF8S4J865G7o88");// 数据传输流水号
			parameters.put("timestamp", "1504846322");// 请求时间
			parameters.put("phone", "18081165956");// 用户手机号
			parameters.put("number", "1232135678903245");// 电子卡卡号
		
			parameters.put("password", "cnrMtfOoNhlg4YoiQwaGxw");// 
			parameters.put("sign", "-e1CYmtQ-2jFnouOvcyaUVHfxZeuA_0Ymh1q8hj5yDN4H2npXc7P8zl7k6m7qj8JqWIn4X1IUxHQqbqa94rTFLtkzJVb7LML2o7MMzTB3a1O9_-tnrgdo_y4TcOR3y_QkMjQcawacJBtoPclR23Quw");// 
			//parameters.put("fu_card_no", cardNo);// 福卡卡号
			//HttpClientUtils httpclient = new HttpClientUtils();
			//String content = httpclient.doPostRequest(notifyUrl, parameters, "UTF-8");
			try {
				JSONObject jsonObject = JSONObject.fromObject(parameters);
				System.out.println(jsonObject.toString());
				System.out.println(concatHttpParams(parameters,"utf-8"));
				String content = HttpClientUtil.httpPost(concatHttpParams(parameters,"utf-8"),"https://carrefour.hxfybj.net:31003/api/use_coupon", null);
				System.out.println(content);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*HttpClientUtils httpclient = new HttpClientUtils();
			String content1 = httpclient.doPostRequest("http://ts.yquan.net.cn/carrefour/api/bind_notify", parameters, "UTF-8");
			System.out.println(content1);*/
			
			
	    	
		}
}  
