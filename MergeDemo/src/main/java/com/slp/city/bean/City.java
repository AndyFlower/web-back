package com.slp.city.bean;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.io.Serializable;

/**
 * @author sanglp
 * @create 2018-01-02 10:16
 * @desc 城市
 *  Type Description：
 *      1. annotation @JsonSerialize, Entity serialized to json
 *      2. annotation @JsonNaming, convert Higher case to under score
 *          and Lower case, example: cityCode,
 *          after json naming convert, will be city_code
 **/
@JsonSerialize
@JsonNaming(PropertyNamingStrategy.LowerCaseWithUnderscoresStrategy.class)
public class City  implements Serializable{
    private String id;
    private String cityCode;
    private String provinceCode;
    private String cityName;
    private String cityJb;
    private String city;
    private String province;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getCityCode() {
        return cityCode;
    }
    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }
    public String getCityName() {
        return cityName;
    }
    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
    public String getCityJb() {
        return cityJb;
    }
    public void setCityJb(String cityJb) {
        this.cityJb = cityJb;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public String getProvince() {
        return province;
    }
    public void setProvince(String province) {
        this.province = province;
    }
    public String getProvinceCode() {
        return provinceCode;
    }
    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode;
    }
}
