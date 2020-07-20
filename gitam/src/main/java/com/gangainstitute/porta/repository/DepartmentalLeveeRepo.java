package com.gangainstitute.porta.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.DepartmentalLevee;

public interface DepartmentalLeveeRepo extends JpaRepository<DepartmentalLevee, String> {
	public DepartmentalLevee findByCourseCode(String courseCode);

}
