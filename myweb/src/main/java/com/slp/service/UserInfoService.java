package com.slp.service;

import com.slp.dto.UserInfo;

/**
 * @author sanglp
 * @create 2018-01-25 14:40
 * @desc 用户信息业务接口
 **/
public interface UserInfoService {
    int save(UserInfo userInfo);

    UserInfo selectUserByEmail(UserInfo userInfo);
}
