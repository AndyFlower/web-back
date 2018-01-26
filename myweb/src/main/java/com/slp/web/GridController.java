package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 13:53
 * @desc 栅格布局
 **/
@Controller
public class GridController {

    @RequestMapping(value = "grid",method = {RequestMethod.GET,RequestMethod.POST})
    public String grid(ModelMap map, HttpServletRequest request){

        return "grid";
    }
}
