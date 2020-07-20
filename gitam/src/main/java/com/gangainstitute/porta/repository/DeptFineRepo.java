package com.gangainstitute.porta.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.student.DeptFine;

public interface DeptFineRepo extends JpaRepository<DeptFine, String> {
	public List<DeptFine> findByRollNo(String rollNo);
	public List<DeptFine> findAllByRollNo(String rollNo);
	public DeptFine findByFineCode(int fineCode);

}
