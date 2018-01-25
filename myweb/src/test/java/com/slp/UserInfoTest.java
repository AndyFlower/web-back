package com.slp;

import com.slp.dao.UserInfoMapper;
import com.slp.dto.UserInfo;
import com.slp.util.UUIDUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;

/**
 * @author sanglp
 * @create 2018-01-25 16:05
 * @desc 测试类
 **/
public class UserInfoTest {
    @Test
    public void insertTest() throws IOException {
        SqlSession session=MyBatisUtil.getSession();
        try {
            UserInfo userInfo = new UserInfo();
            userInfo.setId(UUIDUtil.generatorUUID());
            userInfo.setUserName("sanglp");
            userInfo.setEmail("110");
            UserInfoMapper userInfoDao = session.getMapper(UserInfoMapper.class);

            Assert.assertEquals(1, userInfoDao.insert(userInfo));
        } finally {
            session.close();
        }
    }
}
