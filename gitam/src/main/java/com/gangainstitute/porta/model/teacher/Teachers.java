package com.gangainstitute.porta.model.teacher;

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
public class Teachers {
	  
	@Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private int teacherID;
	@Column(unique = true)
	 private String eID;
	  private long userRef;
	  private String status;
	  private String fname;
	  private String mname;
	  private String lname;
	  
	  @Column(unique = true)
	  private String email;
	  private String phoneNo;
	  private String department;
	  private String designition;
	  private String yearOfEmployment;
	  private String experience;
	  private String qualification;
	  private String mostFavouriteSubject;
	  private String favouriteSubject;
	  private String dob;
	  private String bloodGroup;
	  private String gender;
	  private String nationality;
	  private  String city;
	  private String state;
	  private String zipCode;
	  private String correspondentAddress;
	  private String permanentAddress;
	  
	
	  
	  
	  
	  //setters & getters
	  
	  
	  
	public int getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}
	public String geteID() {
		return eID;
	}
	public void seteID(String eID) {
		this.eID = eID;
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
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDesignition() {
		return designition;
	}
	public void setDesignition(String designition) {
		this.designition = designition;
	}
	public String getYearOfEmployment() {
		return yearOfEmployment;
	}
	public void setYearOfEmployment(String yearOfEmployment) {
		this.yearOfEmployment = yearOfEmployment;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getMostFavouriteSubject() {
		return mostFavouriteSubject;
	}
	public void setMostFavouriteSubject(String mostFavouriteSubject) {
		this.mostFavouriteSubject = mostFavouriteSubject;
	}
	public String getFavouriteSubject() {
		return favouriteSubject;
	}
	public void setFavouriteSubject(String favouriteSubject) {
		this.favouriteSubject = favouriteSubject;
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
	@Override
	public String toString() {
		return "Teachers [teacherID=" + teacherID + ", eID=" + eID + ", userRef=" + userRef + ", status=" + status
				+ ", fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", email=" + email + ", phoneNo="
				+ phoneNo + ", department=" + department + ", designition=" + designition + ", yearOfEmployment="
				+ yearOfEmployment + ", experience=" + experience + ", qualification=" + qualification
				+ ", mostFavouriteSubject=" + mostFavouriteSubject + ", favouriteSubject=" + favouriteSubject + ", dob="
				+ dob + ", bloodGroup=" + bloodGroup + ", gender=" + gender + ", nationality=" + nationality + ", city="
				+ city + ", state=" + state + ", zipCode=" + zipCode + ", correspondentAddress=" + correspondentAddress
				+ ", permanentAddress=" + permanentAddress + "]";
	}	  
	 
	 

	public TeacherLogin loginSetter(User user) {
		TeacherLogin login=new TeacherLogin();
		  login.setName(this.getFname());
		  login.setEmail(this.getEmail());
		  login.setPassword(user.getPassConfirm());
		  return login;
	  }
}
