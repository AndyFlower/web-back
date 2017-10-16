package com.slp.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class JspCacheFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletResponse resp = (HttpServletResponse) response;
		Date date = new Date();
		long time=date.getTime()+1000*60*60*24*5;
		resp.setHeader("expires", ""+time);
        resp.setHeader("pragma", ""+time);
        resp.setHeader("cache-control", ""+time);
        /**
         * 设置不缓存
         * resp.setHeader("expires","-1");
		 * resp.setHeader("pragma", "no-cache");
		 * resp.setHeader("cache-control", "no-cache");
         */
        //用修改过的resp往后台传
        chain.doFilter(request, resp);
	}

	@Override
	public void destroy() {

	}

}
