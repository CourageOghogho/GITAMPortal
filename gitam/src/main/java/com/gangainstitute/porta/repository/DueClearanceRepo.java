package com.gangainstitute.porta.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gangainstitute.porta.model.student.DueClearance;

public interface DueClearanceRepo  extends JpaRepository<DueClearance, String> {
	public DueClearance findByRollNo(String rollNo);

}

