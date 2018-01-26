package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 15:37
 * @desc Typograph
 **/
@Controller
public class TypographyController {

    @RequestMapping(value = "typography",method = {RequestMethod.GET,RequestMethod.POST})
    public String typography(ModelMap map, HttpServletRequest request){

        return "typography";
    }
}
