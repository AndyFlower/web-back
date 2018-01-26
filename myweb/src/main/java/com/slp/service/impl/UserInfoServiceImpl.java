package com.slp.service.impl;

import com.slp.dao.UserInfoMapper;
import com.slp.dto.UserInfo;
import com.slp.dto.UserInfoCriteria;
import com.slp.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.rmi.runtime.Log;

import java.util.List;
import java.util.logging.Logger;

/**
 * @author sanglp
 * @create 2018-01-25 14:40
 * @desc 用户信息业务实现
 **/
@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    UserInfoMapper userInfoMapper;
    @Override
    public int save(UserInfo userInfo) {
       return  userInfoMapper.insert(userInfo);
    }

    @Override
    public UserInfo selectUserByEmail(UserInfo userInfo) {
        UserInfoCriteria userInfoCriteria =  new UserInfoCriteria();
        userInfoCriteria.createCriteria().andEmailEqualTo(userInfo.getEmail());
        List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoCriteria);
        if(userInfos.size()>0){
            return userInfos.get(0);
        }
        return null;
    }
}