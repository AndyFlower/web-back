package com.slp.controller;

import com.slp.domain.User1;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author sanglp
 * @create 2018-01-09 13:17
 * @desc 生成xml的控制层
 **/
@Controller
@RequestMapping("/user1")
public class User1Controller {
    @RequestMapping(value="{name}", method = RequestMethod.GET)
    public @ResponseBody
    User1 getUser(@PathVariable String name) {

        User1 user = new User1();

        user.setName(name);
        user.setId(1);
        return user;
    }
}
