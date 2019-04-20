package com.sg.backstage.department.service;

import java.util.List;

import com.sg.backstage.department.dao.DepartmentDao;
import com.sg.backstage.department.dao.DepartmentDaoImpl;
import com.sg.backstage.department.entity.Department;


/**
 * 娱乐设施服务层实现类
 *
 */
public class DepartmentServiceImpl implements DepartmentService{
	
	private DepartmentDao departmentDao=new DepartmentDaoImpl();
	
	/**
	 * 增加娱乐设施
	 */
	@Override
	public int doAdd(Department department) {
		return departmentDao.doAdd(department);
	}
 
	public List<Department> findAll() {
        return departmentDao.findAll();
    }
	
//	public List<Department> selectById(String d_id) {
//        return departmentDao.selectById(d_id);
//    }
	
	public List<Department> selectById(String d_id, String d_name) {
        return departmentDao.selectById(d_id,d_name);
   }
	
	public void deleById(String d_id){
		departmentDao.deleById(d_id);
	}
	/**
	 * 修改娱乐设施
	 */
	@Override
	public int doAlter(String d_id,String d_name,Float d_aver_score,String d_des,String type_id){
		return departmentDao.doAlter(d_id, d_name, d_aver_score, d_des, type_id);
	}

}
