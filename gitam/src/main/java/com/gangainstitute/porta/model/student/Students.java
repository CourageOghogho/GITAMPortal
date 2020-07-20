package com.gangainstitute.porta.model.student;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gangainstitute.porta.model.User;

@Component
@Entity 
public class Students {

	 @Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  private int sid; 
	  private long userRef;
	  private String status;
	  private String fname;
	  private String mname;
	  private String lname;
	  
	  @Column(unique = true)
	  private String email;
	  private String phoneNo;
	  private String batch;
	  private String course;
	  private String dept;
	  @Column(unique = true)
	  private String rollNo;
	  private String dob;
	  private String bloodGroup;
	  private String gender;
	  private String nationality;
	  private  String city;
	  private String state;
	  private String zipCode;
	  private String correspondentAddress;
	  private String permanentAddress;
	  

	  

	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public long getUserRef() {
		return userRef;
	}
	public void setUserRef(long userRef) {
		this.userRef = userRef;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	  
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
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
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getCorrespondentAddress() {
		return correspondentAddress;
	}
	public void setCorrespondentAddress(String correspondentAddress) {
		this.correspondentAddress = correspondentAddress;
	}
	public String getPermanentAddress() {
		return permanentAddress;
	}
	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}
	  
	public StudentLogin  loginSetter(User user) {
		StudentLogin login=new StudentLogin();
		  login.setName(this.getFname());
		  login.setEmail(this.getEmail());
		  login.setPassword(user.getPassConfirm());
		  return login;

	  }

}
