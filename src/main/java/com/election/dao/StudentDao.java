package com.election.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.election.model.Student;

@Repository
public interface StudentDao extends JpaRepository<Student, Integer>{
	@Query(value = "select p from Student p where p.email = :email")
	public Student selectByEmail(@Param(value = "email") String sourceLocation);
	

}
