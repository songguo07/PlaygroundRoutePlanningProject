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


@WebFilter(filterName="/ClearUserHobbyFilter",urlPatterns="/*")
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
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
		
		User user = (User) session.getAttribute("userSession");
		System.out.println(user);
		
        String uri = request.getRequestURI(); 
        System.out.println("uri---->" + uri);
      //如果发现是css或者js文件，直接放行
		  if(uri.contains(".map") || uri.contains(".gif") || 
				  uri.contains(".css") || uri.contains(".js") || 
				  uri.contains(".png")|| uri.contains(".jpg")|| 
				  uri.contains(".eot") || uri.contains(".svg") || 
				  uri.contains(".ttf") || uri.contains(".woff") || 
				  uri.contains(".woff2") || uri.contains(".gif") || 
	        		uri.equals(((HttpServletRequest) request).getContextPath() + "/views/login_regist/login.jsp'")||
	        		uri.equals(((HttpServletRequest) request).getContextPath() + "/views/login_regist/regist.jsp'")||
	        		uri.equals(((HttpServletRequest) request).getContextPath() + "/views/login_regist/forget_password.jsp'")){
		     	System.out.println("直接放行");
	        	chain.doFilter(request, response);
		  }else{
				if(session!=null&&session.getAttribute("userSession")==null) {
					System.out.println("agaagggggggggggggggggg");
					 response.setContentType("text/html;charset=utf-8");
		             PrintWriter out = response.getWriter();
		             out.println("<script language='javascript' type='text/javascript'>");
		             out.println("window.top.location.href='" + ((HttpServletRequest) request).getContextPath() + "/views/login_regist/login.jsp'");
		             out.println("</script>");
		             chain.doFilter(request, response);
				}else {
					chain.doFilter(request, response);
				}
			}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("2********************过滤器");
	}

}
