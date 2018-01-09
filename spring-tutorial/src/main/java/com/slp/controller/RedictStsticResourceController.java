package com.slp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author sanglp
 * @create 2018-01-05 13:11
 * @desc 跳转到静态资源页面
 **/
@Controller
public class RedictStsticResourceController {
    @RequestMapping(value = "/index2", method = RequestMethod.GET)
    public String index() {
        return "index1";
    }

    @RequestMapping(value = "/staticPage", method = RequestMethod.GET)
    public String redirect() {

        return "redirect:/pages/final.htm";
    }
}
