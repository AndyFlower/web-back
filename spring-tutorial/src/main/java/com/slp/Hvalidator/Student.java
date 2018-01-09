package com.slp.Hvalidator;

import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotEmpty;

/**
 * @author sanglp
 * @create 2018-01-09 9:56
 * @desc Hibernate validator示例
 **/
public class Student {
    @Range(min = 1,max = 150)
    private Integer age;
    @NotEmpty
    private String name;
    private Integer id;

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
