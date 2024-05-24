package com.election.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.election.model.Student;
import com.election.model.TLVote;

public interface TLVoteDao extends JpaRepository<TLVote, Integer>{
	
	@Query(value = "select u from TLVote u where u.vote = (select Max(vote)  from TLVote  )")
	public TLVote selectByvote();
}