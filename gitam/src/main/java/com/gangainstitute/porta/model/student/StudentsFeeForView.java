package com.gangainstitute.porta.model.student;


public class StudentsFeeForView {
	private String rollNo;
	private String fullName;
	private String course;
	private String batch;
	private float fee;
	private float discount;
	private float deposited;
	private float fine;
	private float due;
	
	
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
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
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
	public float getDue() {
		return due;
	}
	public void setDue(float due) {
		this.due = due;
	}
	@Override
	public String toString() {
		return "StudentsFeeForView [rollNo=" + rollNo + ", fullName=" + fullName + ", course=" + course + ", batch="
				+ batch + ", fee=" + fee + ", discount=" + discount + ", deposited=" + deposited + ", fine=" + fine
				+ ", due=" + due + "]";
	}

	
	

}
