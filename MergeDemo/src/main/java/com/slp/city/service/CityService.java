package com.slp.city.service;

import com.slp.city.bean.City;
import com.slp.city.mapper.CityMapper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Random;

/**
 * @author sanglp
 * @create 2018-01-02 10:17
 * @desc 服务层
 * CRUD (Create 创建，Retrieve 读取，Update 更新，Delete 删除) 操作中，除了 R 具备幂等性，其他三个发生的时候都可能会造成缓存结果和数据库不一致。为了保证缓存数据的一致性，在进行 CUD 操作的时候我们需要对可能影响到的缓存进行更新或者清除。
 **/
@Service
@Transactional(propagation= Propagation.REQUIRED, rollbackFor=Exception.class)
public class CityService {
    private final Log logger = LogFactory.getLog(CityService.class);
    @Autowired
    private CityMapper cityMapper;
    @CacheEvict(value = { "provinceCities", "searchCity" }, allEntries = true)
    public void insertCity() {
        logger.fatal("插入之前");
        City city = new City();
        city.setId("10000"+  new Random(100000).nextInt());
        city.setCity("1000");
        city.setCityCode("1100");
        city.setCityJb("1");
        city.setProvinceCode("1100");
        city.setCityName("天津市");
        city.setCity("天津市");
        city.setProvince("天津市");
        logger.info(city.getId());
        logger.info("before insert the first city");
        cityMapper.insertCity(city);
        logger.info("after insert the first city, and before insert the second city");
        // this will throw an exception
       // cityMapper.insertCity(new City());
        logger.debug("after insert the second city");
    }


    // R
   @Cacheable("provinceCities")
    public List<City> provinceCities(String province) {
        logger.debug("province=" + province);
        //return this.cityMapper.provinceCities(province);
        return null;
    }

    // R
    @Cacheable("searchCity")
    public City searchCity(String city_code){
        logger.debug("city_code=" + city_code);
        return this.cityMapper.searchCity(city_code);
    }

    // C
    @CacheEvict(value = { "provinceCities"}, allEntries = true)
    public void insertCity(String city_code, String city_jb,
                           String province_code, String city_name,
                           String city, String province) {
        City cityBean = new City();
        cityBean.setCityCode(city_code);
        cityBean.setCityJb(city_jb);
        cityBean.setProvinceCode(province_code);
        cityBean.setCityName(city_name);
        cityBean.setCity(city);
        cityBean.setProvince(province);
        this.cityMapper.insertCity(cityBean);
    }
    // U
    @CacheEvict(value = { "provinceCities", "searchCity" }, allEntries = true)
    public int renameCity(String city_code, String city_name) {
        City city = new City();
        city.setCityCode(city_code);
        city.setCityName(city_name);
        this.cityMapper.renameCity(city);
        return 1;
    }

    // D
    @CacheEvict(value = { "provinceCities", "searchCity" }, allEntries = true)
    public int deleteCity(String city_code) {
        this.cityMapper.deleteCity(city_code);
        return 1;
    }
}
