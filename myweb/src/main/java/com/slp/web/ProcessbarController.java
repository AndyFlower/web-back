package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 13:24
 * @desc 进度条
 **/
@Controller
public class ProcessbarController {

    @RequestMapping(value = "processbar",method = {RequestMethod.GET,RequestMethod.POST})
    public String processbar(ModelMap modelMap , HttpServletRequest request){

        return "processbar";
    }
}
