package com.gangainstitute.porta.model.student;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class DeptFine {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int fineCode;
	private String rollNo;
	private float amount;
	private String remark;
	
	
	
	public int getFineCode() {
		return fineCode;
	}
	public void setFineCode(int fineCode) {
		this.fineCode = fineCode;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "DeptFine [fineCode=" + fineCode + ", rollNo=" + rollNo + ", amount=" + amount + ", remark=" + remark
				+ "]";
	}
	
	

}
