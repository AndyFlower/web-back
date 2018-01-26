package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 17:03
 * @desc 表格
 **/
@Controller
public class TableController {

    @RequestMapping(value = "table",method = {RequestMethod.GET,RequestMethod.POST})
    public String table(ModelMap map, HttpServletRequest request){

        return "table";
    }
}
