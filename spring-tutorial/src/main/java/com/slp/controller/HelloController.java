package com.slp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author sanglp
 * @create 2018-01-04 13:44
 * @desc 测试类
 **/
@Controller
public class HelloController {
    @RequestMapping(value = "/admin")
    @ResponseBody
    public String testSpring(){
        return "My testSpring";
    }
    @RequestMapping(value = "/hello")
    public String  hello(ModelMap model){
        model.addAttribute("message", "Hello Spring MVC Framework!");

        return "hello";
    }
}
