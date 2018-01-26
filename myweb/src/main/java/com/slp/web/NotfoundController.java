package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 17:15
 * @desc 404
 **/
@Controller
public class NotfoundController {

    @RequestMapping(value = "notFound",method = {RequestMethod.GET})
    public String notFound(ModelMap map, HttpServletRequest request){

        return "404";
    }
}
