package com.sg.forestage.user.action;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sg.forestage.user.entity.User;
import com.sg.forestage.user.service.UserService;
import com.sg.forestage.user.service.UserServiceImpl;

import net.sf.json.JSONArray;


@WebServlet("/RecommedHobby")
public class RecommedHobby extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * 0.8-1.0 极强相关
	0.6-0.8 强相关
	0.4-0.6 中等程度相关
	0.2-0.4 弱相关
	0.0-0.2 极弱相关或无相关
	 *
	 *
	 * @author 李银霞
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("userSession");
		String nowUserid=user.getUserId();
		System.out.println("！！！！！！！！！！！！！！！！！》》》推荐算法servlet");
		int newScore[]=new int[27];
		int scores[]=new int[27];
		Set<String> recommentUserId=new HashSet();
		Set<String> recommentDId=new HashSet();
		Map<String,int[]> userScores = new HashMap();
		UserService userService = new UserServiceImpl();
		userScores=userService.getUsersHobby(user.getUserId());
		Set<Entry<String, int[]>> ms =userScores.entrySet();
		
		double down1=0;
		double up=0;
		double down=0;
		double down2=0;
		for (Map.Entry entry : ms) {
			System.out.println("用户id1:"+entry.getKey());
			scores=userScores.get(entry.getKey());
			if(nowUserid.equals(entry.getKey())) {
				System.out.println("scores1:"+scores[0]);
				
				for (int i=0;i<27;i++) {
					System.out.println(i+"当前用户的27个项目的评分："+scores[i]);
					newScore[i]=scores[i];
					down1+=newScore[i]*newScore[i];
				}
				down1=Math.sqrt(down1);
				break;
			}
		}
		
		for (Map.Entry entry : ms) {
			if(!nowUserid.equals(entry.getKey())) {
				System.out.println("用户id2:"+entry.getKey());
				int otherSocres[]=new int[27];
				otherSocres=userScores.get(entry.getKey());
				for(int k=0;k<27;k++) {
					System.out.println(k+"其他用户的27个项目的评分："+otherSocres[k]);
					up+=newScore[k]*otherSocres[k];
					down2+=scores[k]*scores[k];
				}
				
				down2=Math.sqrt(down2);
				double sim=0;
				sim=up/(down1*down2);
				DecimalFormat df = new DecimalFormat("0.0");
				sim=Double.parseDouble(df.format(sim));
				System.out.println("余弦相似度："+sim);
				if(sim>=0.8) {
					recommentUserId.add((String)entry.getKey());
				}
				for (String rui : recommentUserId) {
					System.out.println("被推荐用户的id:"+rui);
					List<String> getSimDIdList = userService.getSimHobbyId(nowUserid, rui);
					for (String getSimDId : getSimDIdList) {
						recommentDId.add(getSimDId);
					}
				}
			}
		}
		 JSONArray jsonArray = JSONArray.fromObject(new ArrayList(recommentDId));   
         response.getWriter().println(jsonArray);
	}

}
