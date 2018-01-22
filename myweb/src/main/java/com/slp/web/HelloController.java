package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author sanglp
 * @create 2018-01-22 15:18
 * @desc 项目整合示例
 **/
@Controller
@RequestMapping(value = "/hello", method = RequestMethod.GET)
public class HelloController {
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String printHello(ModelMap model) {
        model.addAttribute("msg", "Spring MVC Hello World");
        model.addAttribute("name", "sanglp");
        return "hello";
    }
}
