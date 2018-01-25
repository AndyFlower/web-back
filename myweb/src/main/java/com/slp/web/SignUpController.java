package com.slp.web;

import com.slp.dto.UserInfo;
import com.slp.service.UserInfoService;
import com.slp.util.UUIDUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sanglp
 * @create 2018-01-25 13:50
 * @desc 注册入口
 **/
@Controller
public class SignUpController {
    private Logger logger= Logger.getLogger(this.getClass());

    @Autowired
    private UserInfoService userInfoService;
    /**
     * 进入注册页面
     * @param map
     * @return
     */
    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String signUp(ModelMap map){
        //进入注册页面
        return "signUp";
    }

    /**
     * 注册页面提交
     * @param map
     * @return
     */
    @RequestMapping(value = "/signUpConfirm", method = RequestMethod.GET)
    public String signUpConfirm(ModelMap map, HttpServletRequest request){
        String name  = request.getParameter("name");
        logger.info("name="+name);
        String email = request.getParameter("email");
        logger.info("email="+email);
        String password = request.getParameter("password");
        logger.info("password="+password);
        String password2 = request.getParameter("password2");
        logger.info("password2="+password2);
        UserInfo userInfo = new UserInfo();
        userInfo.setUserName(name);
        userInfo.setEmail(email);
        userInfo.setUserPassword(password);
        userInfo.setId(UUIDUtil.generatorUUID());
        int i = userInfoService.save(userInfo);
        if(i==1){
            logger.info("保存用户信息成功，跳转到登陆页面");
            map.addAttribute("userName",name);
            return "login";
        }else {
        return "signUp";
        }
    }
}
