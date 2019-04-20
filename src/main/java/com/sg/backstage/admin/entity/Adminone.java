package com.sg.backstage.admin.entity;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.sg.backstage.admin.entity.ResumeBasicinfo;
import com.sg.backstage.admin.dao.DBUtil;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Adminone{
	public Adminone() {
		super();
	}
	public List readFirstTitle(String Sid){
        List<ResumeBasicinfo> list =new ArrayList<ResumeBasicinfo>();
        Connection con=DBUtil.getConnection();
        Statement psmt=null;
        ResultSet rs=null;
        String sql = "SELECT * FROM USER_TABLE where USER_ID='"+Sid+"'";
		
        try {
			psmt =  con.createStatement();
			rs = psmt.executeQuery(sql);
	                if(rs.next())
	                {
	                	String USER_ID=rs.getString("USER_ID");
	                    String USER_TELNO=rs.getString("USER_TELNO");
	                    String USER_NICKNAME=rs.getString("USER_NICKNAME");
	                    String USER_AGE=rs.getString("USER_AGE");
	                    String USER_GENDER=rs.getString("USER_GENDER");
	                    String USER_PASSWORD=rs.getString("USER_PASSWORD");
	                    ResumeBasicinfo tl=new ResumeBasicinfo(USER_ID,USER_TELNO,USER_NICKNAME,USER_AGE,USER_GENDER,USER_PASSWORD);
	                    list.add(tl);
	                }
	            
	            
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(rs, psmt, con);
		}
        
        return list;
    }
    
	

}


