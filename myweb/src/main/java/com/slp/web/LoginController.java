package com.slp.web;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author sanglp
 * @create 2018-01-23 9:04
 * @desc 登陆入口
 **/
@Controller
public class LoginController {
    private Logger logger= Logger.getLogger(this.getClass());

    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(ModelMap map){
        boolean isRegister = false;
        //do something check  and verify if accept login
        if(isRegister){
            return "loginSuccess";
        }else{
            return "register";
        }

    }
}
