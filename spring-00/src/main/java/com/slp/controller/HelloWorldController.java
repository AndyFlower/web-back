package com.slp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by sanglp on 2018/1/21.
 */
@Controller
public class HelloWorldController {
    /**
     * 方法接收一个Model类型的参数并返回一个字符串String类型的视图名
     * @param model
     * @return
     */
    @RequestMapping("helloWorld")
    public String helloWorld(Model model){
        model.addAttribute("message","Hello World!");
        return "hello";
    }

    /**
     * Spring MVC可以在方法参数上使用@PathVariable注解，将其与URI模板中的参数绑定起来
     * @param ownerId
     * @param model
     * @return
     */
    @RequestMapping(path ="/owners/{ownerId}",method = RequestMethod.GET)
    public String findOwner(@PathVariable String ownerId,Model model){
        model.addAttribute("owner",ownerId);
        return "displayOwner";
    }
}
