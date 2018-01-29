package com.slp.web;

import com.slp.dto.UserInfo;
import com.slp.service.UserInfoService;
import com.slp.util.EHCacheUtil;
import net.sf.ehcache.CacheManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-23 9:04
 * @desc 登陆入口
 **/
@Controller
public class LoginController {
    private Logger logger= Logger.getLogger(this.getClass());
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private CacheManager cacheManager;
    /**
     * 进入登陆首页页面
     * @param map
     * @return
     */
    @RequestMapping(value = "login",method = {RequestMethod.POST,RequestMethod.GET})
    public String login(ModelMap map){
       //进入登陆页面
        return "login";

    }


    /**
     * 获取用户信息监测是否已注册可以登录
     * @param map
     * @param request
     * @return
     */
    @RequestMapping(value = "loginConfirm",method = {RequestMethod.POST,RequestMethod.GET})
    public String loginConfirm(ModelMap map, HttpServletRequest request){
        EHCacheUtil.put("FirstKey",request.getParameter("email") );
        //登陆提交页面
        String email = request.getParameter("email");
        logger.info("email="+email);
        String password = request.getParameter("password");
        logger.info("password="+password);
        UserInfo userInfo = new UserInfo();
        userInfo.setEmail(email);
        userInfo.setUserPassword(password);
        UserInfo user= userInfoService.selectUserByEmail(userInfo);
        if (user==null){
            return "signUp";
        }
        List keys = EHCacheUtil.getKeys();
        for(int i=0;i<keys.size();i++){
            logger.debug(keys.get(i));
            logger.debug(EHCacheUtil.get(keys.get(i)));
        }
        logger.info(user.getEmail());
        logger.info(user.getId());
        if(!user.getUserPassword().equals(password)){
            map.addAttribute("msg","请输入正确的密码");
            return "login";
        }else {
            request.getSession().setAttribute("email",user.getEmail());
            request.getSession().setAttribute("userName",user.getUserName());
            request.getSession().setAttribute("userId",user.getId());
            logger.info("校验通过");
            return "index";
        }


    }
}
