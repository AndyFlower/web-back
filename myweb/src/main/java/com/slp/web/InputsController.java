package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 16:10
 * @desc input
 **/
@Controller
public class InputsController {

    @RequestMapping(value = "input",method = {RequestMethod.GET,RequestMethod.POST})
    public String input(ModelMap map, HttpServletRequest request){

        return "input";
    }
}
