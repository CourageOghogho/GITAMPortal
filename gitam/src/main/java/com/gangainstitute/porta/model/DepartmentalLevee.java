package com.gangainstitute.porta.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Component
@Entity
public class DepartmentalLevee {
	@Id
	private String leveeCode;
	private String courseCode;	
	private String deptCode;
	private float leveeAmount;
	private String remark;
	
	public String getLeveeCode() {
		return leveeCode;
	}
	public void setLeveeCode(String leveeCode) {
		this.leveeCode = leveeCode;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public float getLeveeAmount() {
		return leveeAmount;
	}
	public void setLeveeAmount(float leveeAmount) {
		this.leveeAmount = leveeAmount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "DepartmentalLevee [leveeCode=" + leveeCode + ", courseCode=" + courseCode + ", deptCode=" + deptCode
				+ ", leveeAmount=" + leveeAmount + ", remark=" + remark + "]";
	}
	
	

}
