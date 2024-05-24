package com.election.dao;

import java.util.List;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.election.model.Admin;


@Repository
public interface AdminDao extends JpaRepository<Admin, Integer>{
	@Query(value = "select p from Admin p where p.email = :email ")
	public Admin selectByEmail(@Param(value = "email") String sourceLocation);
	

}
