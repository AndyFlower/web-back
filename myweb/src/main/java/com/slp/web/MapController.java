package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-26 16:50
 * @desc 地图
 **/
@Controller
public class MapController {

    @RequestMapping(value = "map",method = {RequestMethod.GET,RequestMethod.POST})
    public String map(HttpServletRequest request, ModelMap map){

        return "map";
    }
}
