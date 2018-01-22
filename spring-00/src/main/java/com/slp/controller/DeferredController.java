package com.slp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.async.DeferredResult;

/**
 * Created by sanglp on 2018/1/21.
 * 控制器先返回一个DeferredResult对象，并把它存取在内存（队列或列表等）中以便存取
 * Spring MVC开始进行异步处理
 * DispatcherServlet和所有过滤器都退出Servlet容器线程，但此时方法的响应对象仍未返回
 * 由处理该请求的线程对 DeferredResult进行设值，然后Spring MVC会重新把请求分派回Servlet容器，恢复处理
 * DispatcherServlet再次被调用，恢复对该异步返回结果的处理
 */
@Controller
public class DeferredController {
    @RequestMapping("/quotes")
    @ResponseBody
    public DeferredResult<String> quotas(){
        DeferredResult<String> deferredResult = new DeferredResult<String>();
        return deferredResult;
    }


}
