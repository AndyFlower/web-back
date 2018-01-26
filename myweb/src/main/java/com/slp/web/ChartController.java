package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 16:57
 * @desc 图表
 **/
@Controller
public class ChartController {

    @RequestMapping(value = "chart",method = {RequestMethod.GET,RequestMethod.POST})
    public String chart(ModelMap map, HttpServletRequest request){

        return "chart";
    }
}
