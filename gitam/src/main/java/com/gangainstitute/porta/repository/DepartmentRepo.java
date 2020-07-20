package com.gangainstitute.porta.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.Department;

public interface DepartmentRepo extends JpaRepository<Department, String> {

}
