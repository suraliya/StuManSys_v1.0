package com.action;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.persistence.user.StudentDAO;
import com.persistence.user.Students;

public class FetchStudentAction extends ActionSupport {

	private static final long serialVersionUID = -4174520172684147035L;
	
	private List<Students> usersList = null;
	public ResultSet rs = null;
	//public UsersDAO pageDao = new UsersDAO();
	
	@Override
	public String execute() throws Exception {
		try {
			setUsersList(new ArrayList<Students>());
			Students bean = null;
			rs = new StudentDAO().usersList();
			if (rs != null) {
				while (rs.next()) {					
					bean = new Students();					
					
					bean.setStu_id(rs.getLong("stu_id"));
					bean.setFirstname(rs.getString("firstname"));
					bean.setLastname(rs.getString("lastname"));
					bean.setDob(rs.getString("dob"));
					bean.setNic(rs.getString("nic"));
					bean.setGender(rs.getString("gender"));
					bean.setContactno(rs.getString("contactno"));
					bean.setEmail(rs.getString("email"));
					bean.setAddress(rs.getString("address"));
					bean.setCourse(rs.getString("course"));				

					getUsersList().add(bean);
				}
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}
	
	public List<Students> getUsersList() {
		return usersList;
	}
	public void setUsersList(List<Students> usersList) {
		this.usersList = usersList;
	}	
	
}
