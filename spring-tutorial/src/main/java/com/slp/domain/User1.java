package com.slp.domain;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author sanglp
 * @create 2018-01-09 13:16
 * @desc 生产XML的domain
 **/
@XmlRootElement(name = "user")
public class User1 {
    private String name;
    private int id ;

    public String getName() {
        return name;
    }
    @XmlElement
    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }
    @XmlElement
    public void setId(int id) {
        this.id = id;
    }
}
