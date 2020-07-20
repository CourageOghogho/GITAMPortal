package com.gangainstitute.porta.model;

public class TrackDetailsNoDue {
	private String rollNo;
	private int progressValue;
	private String barBehavior;
	private String status;
	
	
	public TrackDetailsNoDue() {}
	public TrackDetailsNoDue(String rollNo, int progressValue, String barBehavior, String status) {
		this.rollNo = rollNo;
		this.progressValue = progressValue;
		this.barBehavior = barBehavior;
		this.status = status;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public int getProgressValue() {
		return progressValue;
	}
	public void setProgressValue(int progressValue) {
		this.progressValue = progressValue;
	}
	public String getBarBehavior() {
		return barBehavior;
	}
	public void setBarBehavior(String barBehavior) {
		this.barBehavior = barBehavior;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "TrackDetailsNoDue [rollNo=" + rollNo + ", progressValue=" + progressValue + ", barBehavior="
				+ barBehavior + ", status=" + status + "]";
	}
	
	

}
