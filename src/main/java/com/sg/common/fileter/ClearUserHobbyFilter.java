package com.sg.common.fileter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sg.forestage.user.entity.User;

@WebFilter(filterName = "/ClearUserHobbyFilter", urlPatterns = "/*")
public class ClearUserHobbyFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public ClearUserHobbyFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		HttpSession session = request.getSession();

		String uri = request.getRequestURI();
//		System.out.println("filter:ClearUserHobbyFilter-->doFilter(), uri:" + uri);
		// 如果发现是css或者js文件，直接放行
		/**
		 * uri.equals(request.getContextPath() + "/views/login_regist/login.jsp")||
		 * uri.equals(request.getContextPath() + "/views/login_regist/regist.jsp")||
		 * uri.equals(request.getContextPath() +
		 * "/views/login_regist/forget_password.jsp")|| (uri.endWith(".map") ||
		 * uri.endWith(".gif") || uri.endWith(".css") || uri.endWith(".js") ||
		 * uri.endWith(".png")|| uri.endWith(".jpg")|| uri.endWith(".eot") ||
		 * uri.endWith(".svg") || uri.endWith(".ttf") || uri.endWith(".woff") ||
		 * uri.endWith(".woff2") || uri.endWith(".gif"))&&!uri.endWith(".jsp")
		 */
		if (uri.endsWith("DoRegist") || uri.endsWith("DoLogin") || uri.endsWith("DoChangePassword")
				|| uri.equals(request.getContextPath() + "/views/login_regist/login.jsp")
				|| uri.equals(request.getContextPath() + "/views/login_regist/regist.jsp")
				|| uri.equals(request.getContextPath() + "/views/login_regist/forget_password.jsp")
				|| (
					uri.endsWith(".map") || uri.endsWith(".gif") || uri.endsWith(".css") || uri.endsWith(".js")
					|| uri.endsWith(".png") || uri.endsWith(".jpg") || uri.endsWith(".eot") || uri.endsWith(".svg")
					|| uri.endsWith(".ttf") || uri.endsWith(".woff") || uri.endsWith(".woff2")
					|| uri.endsWith(".gif")
					) 
			) {
			//&& !uri.contains(".jsp")) { 不会执行..
			System.out.println("filter:ClearUserHobbyFilter-->doFilter(),静态资源或登陆注册，gogogo");
			chain.doFilter(request, response);
		} else {	//非静态资源
			if (session.getAttribute("userSession") == null) { //非静态资源，session为空
				
				System.out.println("filter:ClearUserHobbyFilter-->doFilter(),非静态资源,session为空，应该重定向到登陆");
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script language='javascript' type='text/javascript'>");
				out.println("window.top.location.href='" + ((HttpServletRequest) request).getContextPath()
						+ "/views/login_regist/login.jsp'");
				out.println("</script>");
				chain.doFilter(request, response);
			} else { //非静态资源，session为空
				User user = (User) session.getAttribute("userSession");
				System.out.println("filter:ClearUserHobbyFilter-->doFilter(), 非静态资源，session不为空，可放行->userSession:" + user);

				chain.doFilter(request, response);
			}
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("filter:ClearUserHobbyFilter-->init()");
	}

}
