package com.slp.controller;

import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import java.net.URI;

/**
 * @author sanglp
 * @create 2018-01-22 10:05
 * @desc 使用UriComponentsBuilder和UrlComponents两个雷提供一种构造和加密URI的机制
 **/
public class UriComController {
    /**
     *@author sanglp
     *@param
     *@create 2018/1/22-10:32
     *@desc
     *@return String
     */
    public String uriTest(){
        UriComponents uriComponents = UriComponentsBuilder.fromUriString("http://example.com/hotels/{hotel}/bookings/{booking}").build();
        URI uri = uriComponents.expand("42","21").encode().toUri();
        return uri.toString();
    }
    /**
     *@author sanglp
     *@param
     *@create 2018/1/22-12:53
     *@desc 主机名、schema, 端口号、请求路径和查询字符串都重用请求里已有的值替换了其中的"accountId"查询参数
     *@return
     */
    public void uriTest1(){
        UriComponents uriComponents = UriComponentsBuilder.newInstance()
                .scheme("http").host("example.com").path("/hotels/{hotel}/bookings/{booking}").build()
                .expand("42","21").encode();
    }
    /**
     *@author sanglp
     *@param
     *@create 2018/1/22-12:56
     *@desc
     *@return
     */
    public void uriTest2(HttpServletRequest request){
        UriComponents ucb = ServletUriComponentsBuilder.fromContextPath(request).path("/accounts").build();

    }
}
