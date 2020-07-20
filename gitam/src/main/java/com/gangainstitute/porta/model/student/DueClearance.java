package com.gangainstitute.porta.model.student;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class DueClearance {
	@Id
	private String rollNo;
	private int studentRequestStatus;
	private int accountStatus;
	private String accountRemark;
	private int libraryStatus;
	private String libraryRemark;
	private int proctorStatus;
	private String proctorRemark;
	private int hodStatus;
	private String hodRemark;
	
	public final static int notApproved=0;
	public final static int Approved=20;
	
	
	
	
	
	
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	
	
	public int getStudentRequestStatus() {
		return studentRequestStatus;
	}
	public void setStudentRequestStatus(int studentRequestStatus) {
		this.studentRequestStatus = studentRequestStatus;
	}
	public int getAccountStatus() {
		return accountStatus;
	}
	public void setAccountStatus(int accountStatus) {
		this.accountStatus = accountStatus;
	}
	public String getAccountRemark() {
		return accountRemark;
	}
	public void setAccountRemark(String accountRemark) {
		this.accountRemark = accountRemark;
	}
	public int getLibraryStatus() {
		return libraryStatus;
	}
	public void setLibraryStatus(int libraryStatus) {
		this.libraryStatus = libraryStatus;
	}
	public String getLibraryRemark() {
		return libraryRemark;
	}
	public void setLibraryRemark(String libraryRemark) {
		this.libraryRemark = libraryRemark;
	}
	public int getProctorStatus() {
		return proctorStatus;
	}
	public void setProctorStatus(int proctorStatus) {
		this.proctorStatus = proctorStatus;
	}
	public String getProctorRemark() {
		return proctorRemark;
	}
	public void setProctorRemark(String proctorRemark) {
		this.proctorRemark = proctorRemark;
	}
	public int getHodStatus() {
		return hodStatus;
	}
	public void setHodStatus(int hodStatus) {
		this.hodStatus = hodStatus;
	}
	public String getHodRemark() {
		return hodRemark;
	}
	public void setHodRemark(String hodRemark) {
		this.hodRemark = hodRemark;
	}
	@Override
	public String toString() {
		return "DueClearance [rollNo=" + rollNo + ", studentRequestStatus=" + studentRequestStatus + ", accountStatus="
				+ accountStatus + ", accountRemark=" + accountRemark + ", libraryStatus=" + libraryStatus
				+ ", libraryRemark=" + libraryRemark + ", proctorStatus=" + proctorStatus + ", proctorRemark="
				+ proctorRemark + ", hodStatus=" + hodStatus + ", hodRemark=" + hodRemark + "]";
	}
	
	
	

}
