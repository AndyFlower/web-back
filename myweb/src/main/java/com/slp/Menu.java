package com.slp;

import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-29 10:33
 * @desc 菜单实体
 **/
public class Menu {

    /**
     * 菜单名称
     */
    private String name;
    /**
     * 菜单路径
     */
    private String url;
    /**
     * 拥有的子菜单列表
     */
    private List<Menu> children;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }
}
