package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 16:03
 * @desc widget
 **/
@Controller
public class WidgetController {

    @RequestMapping(value = "widget",method = {RequestMethod.GET,RequestMethod.POST})
    public String widget(ModelMap map , HttpServletRequest request){

        return "widget";
    }
}
