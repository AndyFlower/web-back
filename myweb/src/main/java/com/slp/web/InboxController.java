package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * 收件箱
 * @author sanglp
 * @create 2018-01-26 16:25
 * @desc inbox
 **/
@Controller
public class InboxController {

    @RequestMapping(value = "inbox",method = {RequestMethod.GET,RequestMethod.POST})
    public String inbox(ModelMap map, HttpServletRequest request){

        return "inbox";
    }
}
