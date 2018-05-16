package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.persistence.user.StudentManager;
import com.persistence.user.Students;
import com.persistence.user.UserManager;
import com.persistence.user.Users;

public class AddStudentAction extends ActionSupport {

	private static final long serialVersionUID = 5071707196843270657L;
	private String studentFirstName;
	private String studentLastName;
	private String studentDOB;
	private String gender;
	private String nic;
	private String email;
	private String address;
	private String course;
	private String contactno;
	
	public Students stu;
	
	public String execute() {
		addData();
		StudentManager.addStudent(stu);
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
	
	public String getStudentFirstName() {
		return studentFirstName;
	}

	public void setStudentFirstName(String studentFirstName) {
		this.studentFirstName = studentFirstName;
	}

	public String getStudentLastName() {
		return studentLastName;
	}

	public void setStudentLastName(String studentLastName) {
		this.studentLastName = studentLastName;
	}

	public String getStudentDOB() {
		return studentDOB;
	}

	public void setStudentDOB(String studentDOB) {
		this.studentDOB = studentDOB;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public Students getStu() {
		return stu;
	}

	public void setStu(Students u) {
		this.stu = u;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	private void addData() {
		stu = new Students();
		stu.setFirstname(studentFirstName);
		stu.setLastname(studentLastName);
		stu.setDob(studentDOB);
		stu.setGender(gender);
		stu.setNic(nic);
		stu.setEmail(email);
		stu.setAddress(address);
		stu.setCourse(course);
		stu.setContactno(contactno);	
	}

	
}
