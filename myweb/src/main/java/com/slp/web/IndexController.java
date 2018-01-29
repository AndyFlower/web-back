package com.slp.web;

import com.slp.Menu;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-26 17:29
 * @desc 首页
 **/
@Controller
public class IndexController {
    private Logger logger= Logger.getLogger(this.getClass());
    @RequestMapping(value = "index",method = {RequestMethod.GET,RequestMethod.POST})
    public String index(ModelMap map, HttpServletRequest request){
        // 创建菜单树
        List<Menu> menuTree = createMenuTree();
        for (int i=0;i<menuTree.size();i++){
            logger.info(menuTree.get(i).getName());
        }
        map.addAttribute("menuTree",menuTree);
        return "index";
    }

    /**
     * 创建菜单树
     *
     * @return List<Menu>
     */
    private List<Menu> createMenuTree() {
        // 创建根菜单列表
        List<Menu> rootMenuList = createMenuList(null, 2);
        for (Menu rootMenu : rootMenuList) {
            // rootMenu是根菜单
            // 给rootMenu创建一级菜单
            rootMenu.setChildren(createMenuList(rootMenu, 2));

            for (Menu childMenu : rootMenu.getChildren()) {
                // childMenu是一级菜单
                // 给childMenu创建子菜单（二级菜单）
                childMenu.setChildren(createMenuList(childMenu, 2));

                for (Menu childOfChildMenu : childMenu.getChildren()) {
                    // childOfChildMenu是二级菜单
                    // 给childOfChildMenu创建子菜单（三级菜单）
                    childOfChildMenu.setChildren(createMenuList(childOfChildMenu, 2));
                }
            }
        }
        // 此时rootMenuList是一个树状结构
        return rootMenuList;
    }

    /**
     * 创建指定菜单的子菜单列表
     *
     * @param menu  Menu 指定的菜单，如果为空，则默认创建的是一级菜单
     * @param count int 指定菜单的子菜单数量
     * @return List<Menu>
     */
    private List<Menu> createMenuList(Menu menu, int count) {
        List<Menu> menuList = new ArrayList<Menu>();
        for (int i = 1; i <= count; i++) {
            if (menu == null) {
                // 创建一级菜单
                Menu rootMenu = new Menu();
                rootMenu.setName("Menu " + i);
                menuList.add(rootMenu);
            } else {
                // 创建menu的子菜单
                Menu childMenu = new Menu();
                childMenu.setName(menu.getName() + "." + i);
                menuList.add(childMenu);
            }
        }
        return menuList;
    }

}
