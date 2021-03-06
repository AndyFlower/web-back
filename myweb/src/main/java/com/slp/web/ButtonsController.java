package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 15:21
 * @desc 按钮
 **/
@Controller
public class ButtonsController {

    @RequestMapping(value = "button",method = {RequestMethod.GET,RequestMethod.POST})
    public String button(ModelMap map, HttpServletRequest request){

        return "button";
    }
}

