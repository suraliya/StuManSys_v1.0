package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.persistence.user.UserManager;
import com.persistence.user.Users;

public class AddUserAction extends ActionSupport {

	private static final long serialVersionUID = 5071707196843270657L;
	private String userFirstName;
	private String userLastName;
	private String email;
	private String nic;
	private String password;
	private String confPassword;
	private String userType;
	private String contactno;
	
	public Users u;
	
	public String execute() {
		addData();
		UserManager.addUser(u);
		//System.out.println("success message");
		//addActionMessage("Data successfully added");
		return SUCCESS;		
	}
	
/*	public void validate() {
		if(!password.equals(confPassword)) {
			addFieldError("invalid", "Password & confirm password doesen't match");
		}
		if(userFirstName.equals("") || userLastName.equals("") || email.equals("") || password.equals("") || confPassword.equals("") || userType.equals("select") || contact.equals("")) {
			addFieldError("invalid", "All fields are required!");
		}
	}*/
	
	public String getUserFirstName() {
		return userFirstName;
	}
	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfPassword() {
		return confPassword;
	}
	public void setConfPassword(String confPassword) {
		this.confPassword = confPassword;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	private void addData() {
		u = new Users();
		u.setFirstname(userFirstName);
		u.setLastname(userLastName);
		u.setEmail(email);
		u.setNic(nic);
		u.setPassword(password);
		u.setContactno(contactno);
		u.setUsertype(userType);
	}

}
