package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 17:29
 * @desc 首页
 **/
@Controller
public class IndexController {

    @RequestMapping(value = "index",method = {RequestMethod.GET,RequestMethod.POST})
    public String index(ModelMap map, HttpServletRequest request){

        return "index";
    }
}
