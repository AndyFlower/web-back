package com.slp.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

/**
 * Created by sanglp on 2018/1/20.
 * WebApplicationInitializer是Spring MVC提供的一个接口，他会查找你所有基于代码的配置，并应用他们来初始化Servlet3版本以上的web容器
 * 它有一个抽象的实现AbstractDispatcherServletInitializer用以简化DispatcherServlet的注册工作：只需要指定其servlet映射即可。
 * 以下的代码配置等同于：
 * <servlet>
 * <servlet-name>dispatcher</servlet-name>
 * <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
 * <load-on-startup>1</load-on-startup>
 * </servlet>
 * <servlet-mapping>
 * <servlet-name>dispatcher</servlet-name>
 * <url-pattern>/</url-pattern>
 * </servlet-mapping>
 */
public class MyWebApplicationInitializer implements WebApplicationInitializer {
    public void onStartup(javax.servlet.ServletContext servletContext) throws ServletException {
        ServletRegistration.Dynamic registration = servletContext.addServlet("dispatcher",new DispatcherServlet());
        registration.setLoadOnStartup(1);
        registration.addMapping("/");
    }
}
