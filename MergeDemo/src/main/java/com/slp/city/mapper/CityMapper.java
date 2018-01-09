package com.slp.city.mapper;

import com.slp.city.bean.City;
import org.springframework.stereotype.Repository;

/**
 * @author sanglp
 * @create 2018-01-02 10:17
 * @desc 映射
 **/
@Repository
public interface CityMapper {
    /**
     * 保存信息
     * @param city
     */
     void insertCity(City city);

    /**
     * 城市
     * @param province
     * @return
     */
   // List<City> provinceCities(String province);

    /**
     * 查询城市
     * @param city_code
     * @return
     */
    City searchCity(String city_code);

    /**
     * 重命名
     * @param city
     */
    void renameCity(City city);

    /**
     * 删除城市
     * @param city_code
     */
    void deleteCity(String city_code);
}
