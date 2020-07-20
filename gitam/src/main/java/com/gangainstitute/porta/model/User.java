package com.gangainstitute.porta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gangainstitute.porta.model.student.Students;
import com.gangainstitute.porta.model.teacher.Teachers;
@Component
@Entity 
public class User {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private long userRef;
  private String name;
  private String dob;
  @Column(unique = true)
  private String email;
  private String phoneNo;
  private String password;
  private String passConfirm;
  private String role;

  public String getDob() {
	return dob;
}

public void setDob(String dob) {
	this.dob = dob;
}
  public long getUserRef() {
	return userRef;
}

public void setUserRef(long userRef) {
	this.userRef = userRef;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

public String getPassConfirm() {
	return passConfirm;
}

public void setPassConfirm(String passConfirm) {
	this.passConfirm = passConfirm;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

public String getPhoneNo() {
	return phoneNo;
}

public void setPhoneNo(String phoneNo) {
	this.phoneNo = phoneNo;
}
public boolean validateUser() {
	if(this.name.equals("")||this.email.equals("")||this.role.equals("")||this.password.equals(""))
		return false;
	else
		return true;
} 

public Students initializeStudent() {
	//This method initializes the student object using details from the user object
	//Returns student object
	Students student=new Students();
	student.setUserRef(this.getUserRef());
	student.setFname(this.getName());
	student.setEmail(this.getEmail());
	student.setDob(this.getDob());
	student.setStatus("Blocked");
	return student;
	
}

public Teachers initializeTeacher() {
	//This method initializes the teacher object using details from the user object
	//Returns Teacher object
	Teachers teacher=new Teachers();
	teacher.setUserRef(this.getUserRef());
	teacher.setFname(this.getName());
	teacher.setEmail(this.getEmail());
	teacher.setDob(this.getDob());
	teacher.setStatus("Blocked");
	return teacher;
	
}

  
}