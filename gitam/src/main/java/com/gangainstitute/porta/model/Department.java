package com.gangainstitute.porta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Department {
	@Id
	private String deptCode;
	@Column(unique = true)
	private String deptName;
	private String hodEid;
	
	
	
	
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getHodEid() {
		return hodEid;
	}
	public void setHodEid(String hodEid) {
		this.hodEid = hodEid;
	}
	@Override
	public String toString() {
		return "Department [deptCode=" + deptCode + ", deptName=" + deptName + ", hodEid=" + hodEid + "]";
	}
	
	
	
	

}
