package com.election.service;

import java.util.List;


import com.election.model.TLVote;


public interface TLVoteService {

	void add(TLVote tlVote);
	void modify(TLVote tlVote);
	void removeById(int id);
	TLVote getById(int id);
	List<TLVote> getAll();
	TLVote getwin();
}
