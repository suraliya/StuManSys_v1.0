package com.interceptor;

import java.util.Map;

import com.bean.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AuthenticationInterceptor implements Interceptor {

	private static final long serialVersionUID = 1309873028297240120L;

	@Override
	public void destroy() {
		
	}

	@Override
	public void init() {
		
	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		
		Map<String,Object> session = actionInvocation.getInvocationContext().getSession();
		User user = (User) session.get("user");
		if(user == null) {
			return ActionSupport.LOGIN;
		}
		return actionInvocation.invoke();
	}
	
	

}
