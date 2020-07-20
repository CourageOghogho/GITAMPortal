package com.gangainstitute.porta.model.student;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class StudentCollegeFee {
	@Id
	private int sid;
	 @Column(unique = true)
	private String rollNo;
	private String fullName;
	private float fee;
	private float discount;
	private float deposited;
	private float fine;
	
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public float getFee() {
		return fee;
	}
	public void setFee(float fee) {
		this.fee = fee;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public float getDeposited() {
		return deposited;
	}
	public void setDeposited(float deposited) {
		this.deposited = deposited;
	}
	public float getFine() {
		return fine;
	}
	public void setFine(float fine) {
		this.fine = fine;
	}
	@Override
	public String toString() {
		return "CollegeFee [sid=" + sid + ", rollNo=" + rollNo + ", fullName=" + fullName + ", fee=" + fee
				+ ", discount=" + discount + ", deposited=" + deposited + ", fine=" + fine + "]";
	}
	
	

}
