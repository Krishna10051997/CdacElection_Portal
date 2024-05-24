package com.election.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.election.model.TechnicalLead;

@Repository
public interface RegisterTLDao extends JpaRepository<TechnicalLead, Integer>{
	
}
