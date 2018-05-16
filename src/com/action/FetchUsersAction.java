package com.action;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.persistence.user.Users;
import com.persistence.user.UsersDAO;


public class FetchUsersAction extends ActionSupport {

	private static final long serialVersionUID = -4174520172684147035L;
	
	private List<Users> usersList = null;
	public ResultSet rs = null;
	//public UsersDAO pageDao = new UsersDAO();
	
	@Override
	public String execute() throws Exception {
		try {
			setUsersList(new ArrayList<Users>());
			Users bean = null;
			rs = new UsersDAO().usersList();
			if (rs != null) {
				while (rs.next()) {					
					bean = new Users();					
					bean.setFirstname(rs.getString("firstname"));					
					bean.setLastname(rs.getString("lastname"));
					bean.setNic(rs.getString("nic"));
					bean.setEmail(rs.getString("email"));
					bean.setContactno(rs.getString("contactno"));
					bean.setUsertype(rs.getString("usertype"));
					getUsersList().add(bean);
				}
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}
	
	public List<Users> getUsersList() {
		return usersList;
	}
	public void setUsersList(List<Users> usersList) {
		this.usersList = usersList;
	}	
	
}
