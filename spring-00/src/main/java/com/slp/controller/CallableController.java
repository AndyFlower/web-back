package com.slp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.util.concurrent.Callable;

/**
 * Created by sanglp on 2018/1/21.
 * 控制器方法已经不一定需要返回一个值，而是可以返回一个java.util.concurrent.Callable的对象，并通过Spring MVC所管理的线程来产生返回值。与此同时，Servlet容器的主线程则可以退出并释放其资源了，同时也允许容器去处理其他的请求。通过一个TaskExecutor，Spring MVC可以在另外的线程中调用Callable。当Callable返回时，请求再携带Callable返回的值，再次被分配到Servlet容器中恢复处理流程。
 * 控制器先返回一个Callable对象
 * Spring MVC开始进行异步处理，并把该Callable对象提交给另一个独立线程的执行器TaskExecutor处理
 * DispatcherServlet和所有过滤器都退出Servlet容器线程，但此时方法的响应对象仍未返回
 * Callable对象最终产生一个返回结果，此时Spring MVC会重新把请求分派回Servlet容器，恢复处理
 * DispatcherServlet再次被调用，恢复对Callable异步处理所返回结果的处理
 */
@Controller
public class CallableController {
    @RequestMapping(method = RequestMethod.POST)
    public Callable<String> processUpload(final MultipartFile file){
        return new Callable<String>() {
            public String call() throws Exception {
                return "test";
            }
        };
    }
}
