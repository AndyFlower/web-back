package com.slp.util;

import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.httpclient.HttpClient;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import java.io.InputStream;
import java.net.URLEncoder;
import java.text.MessageFormat;
   
/**
 * 
 * @ClassName:  TranslateUtil   
 * @Description:通过谷歌翻译做翻译工具 
 * @author: liping.sang
 * @date:   2017年10月10日 下午5:36:05   
 *     
 * @Copyright: 2017 liping.sang Inc. All rights reserved.
 */
public class TranslateUtil {
   
    protected static final String URL_TEMPLATE ="http://translate.google.com/?langpair={0}&text={1}";
    protected static final String ID_RESULTBOX ="result_box";
   
    protected static final String ENCODING ="UTF-8";
    protected static final String TAIWAN ="zh-TW";
    protected static final String CHINA ="zh-CN";
    protected static final String ENGLISH ="en";
    protected static final String JAPAN ="ja";
   
    protected static HttpClient httpclient;
   
    /**
     * <pre>Google翻译</pre>
     *
     * @param text
     * @param src_lang 来源
     * @param target_lang 目标
     * @return
     * @throws Exception
     */
    public static String translate(final String text,final String src_lang,final String target_lang)
            throws Exception {
        InputStream is =null;
        Document doc =null;
        Element ele =null;
        try{
            // create URL string
            String url = MessageFormat.format(URL_TEMPLATE,
                    URLEncoder.encode(src_lang +"|"+ target_lang, ENCODING),
                    URLEncoder.encode(text, ENCODING));
   
            // connect & download html
            is = HttpClientUtil.downloadAsStream(url);
   
            // parse html by Jsoup
            doc = Jsoup.parse(is, ENCODING,"");
            ele = doc.getElementById(ID_RESULTBOX);
            String result = ele.text();
            return result;
   
        }finally{
            IOUtils.closeQuietly(is);
            is =null;
            doc =null;
            ele =null;
        }
    }
   
    /**
     * <pre>Google翻译: 簡中-->繁中</pre>
     *
     * @param text
     * @return
     * @throws Exception
     */
    public static String cn2tw(final String text)throws Exception {
        return translate(text, CHINA, TAIWAN);
    }
   
    /**
     * <pre>Google翻译: 繁中-->簡中</pre>
     *
     * @param text
     * @return
     * @throws Exception
     */
    public static String tw2cn(final String text)throws Exception {
        return translate(text, TAIWAN, CHINA);
    }
   
    /**
     * <pre>Google翻译: 英文-->繁中</pre>
     *
     * @param text
     * @return
     * @throws Exception
     */
    public static String en2tw(final String text)throws Exception {
        return translate(text, ENGLISH, TAIWAN);
    }
   
    /**
     * <pre>Google翻译: 繁中-->英文</pre>
     *
     * @param text
     * @return
     * @throws Exception
     */
    public static String tw2en(final String text)throws Exception {
        return translate(text, TAIWAN, ENGLISH);
    }
   
    /**
     * <pre>Google翻译: 日文-->繁中</pre>
     *
     * @param text
     * @return
     * @throws Exception
     */
    public static String jp2tw(final String text)throws Exception {
        return translate(text, JAPAN, TAIWAN);
    }
   
    /**
     * <pre>Google翻译: 繁中-->日</pre>
     *
     * @param text
     * @return
     * @throws Exception
     */
    public static String tw2jp(final String text)throws Exception {
        return translate(text, TAIWAN, JAPAN);
    }
   public static void main(String[] args) {
	   try {
		System.out.println(cn2tw("中请求"));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
