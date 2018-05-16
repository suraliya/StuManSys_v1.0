package com.action;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.bean.User;
import com.opensymphony.xwork2.ActionSupport;
import com.persistence.user.UserManager;

public class LoginAction extends ActionSupport implements SessionAware  {

	private static final long serialVersionUID = 5384777377095486855L;
	private String email;
	private String password;
	
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
	
	private Map<String,Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	private boolean isValidUser(User user) {
		
		boolean result = UserManager.validateAccount(user);
		return result;
		
	}
	
	@Override
	public String execute() {
		
		clearFieldErrors();
		
		User user = (User) session.get("user");
		
		if(user != null) {
			return SUCCESS;
		}
		else {
			User u = new User(email, password);
			
			if(isValidUser(u)) {
				session.put("user", u);
				return SUCCESS;
			}
			else if(email.equals("") && password.equals("")) {
				addFieldError("invalid", "Email & password is required!");
			}
			else if(email.equals("")) {
				addFieldError("invalid", "Email is required!");
			}
			else if(password.equals("")) {
				addFieldError("invalid", "Password is required!");
			}
			else {
				addFieldError("invalid", "Invalid Email or Password!");
			}
			return INPUT;
		}
	}
}
