package com.sg.common.fileter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/*
 * 设置所有页面的编码方式
 */
@WebFilter(filterName="/CharacterEncodingFilter",urlPatterns="/*")
public class CharacterEncodingFilter implements Filter{

	private String encoding = "UTF-8";
	
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain arg2)
			throws IOException, ServletException {
		request.setCharacterEncoding(encoding);//硬编码
		response.setCharacterEncoding(encoding);
		arg2.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		String encoding = arg0.getInitParameter("encoding");
		System.out.println("filter:CharacterEncodingFilter--->init()");
		if(encoding != null && !"".equals(encoding)) {
			this.encoding = encoding;
		}
	}

}
