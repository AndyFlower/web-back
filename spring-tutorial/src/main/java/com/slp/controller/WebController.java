package com.slp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author sanglp
 * @create 2018-01-05 13:04
 * @desc redirect 示例
 **/
@Controller
public class WebController {
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/redirect", method = RequestMethod.GET)
    public String redirect() {

        return "redirect:finalPage";
    }

    @RequestMapping(value = "/finalPage", method = RequestMethod.GET)
    public String finalPage() {

        return "final";
    }
}
