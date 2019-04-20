package com.sg.backstage.ser.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.sg.backstage.ser.dao.SerDao;
import com.sg.backstage.ser.dao.SerDaoImpl;
import com.sg.backstage.ser.entity.Consult;
import com.sg.backstage.ser.entity.ConsultLength;

/*
 * 客服服务层实现类
 */
public class SerServiceImpl implements SerService{
	private SerDao serDao = new SerDaoImpl();

	@Override
	public List<Consult> getRes() {
		return serDao.getRes();
	}

	@Override
	public Map<String, ConsultLength> getUserMap(List<Consult> qesList) {
		Map<String,ConsultLength> userMap = new HashMap<String,ConsultLength>();
		ConsultLength consultLength = new ConsultLength();
		for(int i=0;i<qesList.size();i++) {
			if(userMap.get(qesList.get(i).getSayId())!=null) {
				consultLength = userMap.get(qesList.get(i).getSayId());
				consultLength.setLength(consultLength.getLength()+1);
				userMap.put(qesList.get(i).getSayId(), consultLength);
			}else if(qesList.get(i).getSayId()!=null){
				consultLength.setUserId(qesList.get(i).getSayId());
				consultLength.setConDate(qesList.get(i).getConDate());
				consultLength.setUserName(qesList.get(i).getUserName());
				consultLength.setLength(1);
				userMap.put(qesList.get(i).getSayId(),consultLength);
			}
		}
		return userMap;
	}

	@Override
	public List<Consult> getUserQes(String userId,List<Consult> conList) {
		List<Consult> userConList = new ArrayList<Consult>();
		for(int i=0;i<conList.size();i++) {
			if(userId.equals(conList.get(i).getSayId())) {
				userConList.add(conList.get(i));
			}
		}
		serDao.getUserQes(userId);
		return userConList;
	}

	@Override
	public boolean insertAnswer(String userId, String content) {
		String consultId=UUID.randomUUID().toString();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(new Date());
		return serDao.insertAnswer(userId, content, time, consultId);
	}

}
