package com.election.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.election.dao.RegisterTLDao;
import com.election.dao.TLVoteDao;
import com.election.model.TLVote;
import com.election.model.TechnicalLead;

@Service
public class TLVoleServiceImpl implements TLVoteService{

	@Autowired
	private TLVoteDao tlVoteDao;
	
	@Override
	public void add(TLVote tlvote) {
		tlVoteDao.save(tlvote);
	}

	@Override
	public void modify(TLVote tlvote) {
		tlVoteDao.save(tlvote);
		
	}

	@Override
	public void removeById(int id) {
		tlVoteDao.deleteById(id);
		
	}

	@Override
	public TLVote getById(int id) {
		Optional<TLVote> opt = tlVoteDao.findById(id);
		if(opt.isPresent()) {
			return opt.get();
		}
		return null;	}

	@Override
	public List<TLVote> getAll() {
		Iterable<TLVote> itr = tlVoteDao.findAll();
		List<TLVote> lst = new ArrayList<TLVote>();
		itr.forEach(ele->lst.add(ele));
		return lst;
	}

	@Override
	public TLVote getwin() {
		
		return tlVoteDao.selectByvote();
	}

	
}
