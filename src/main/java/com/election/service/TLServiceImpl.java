package com.election.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.election.dao.RegisterTLDao;
import com.election.model.TechnicalLead;

@Service
public class TLServiceImpl implements TLService{
	
	@Autowired
	private RegisterTLDao registerTLDao;
	
	@Override
	public void add(TechnicalLead technicalLead) {
		registerTLDao.save(technicalLead);
	}

	@Override
	public void modify(TechnicalLead technicalLead) {
		registerTLDao.save(technicalLead);
		
	}

	@Override
	public void removeById(int id) {
		registerTLDao.deleteById(id);
		
	}

	@Override
	public TechnicalLead getById(int id) {
		Optional<TechnicalLead> opt = registerTLDao.findById(id);
		if(opt.isPresent()) {
			return opt.get();
		}
		return null;	}

	@Override
	public List<TechnicalLead> getAll() {
		Iterable<TechnicalLead> itr = registerTLDao.findAll();
		List<TechnicalLead> lst = new ArrayList<TechnicalLead>();
		itr.forEach(ele->lst.add(ele));
		return lst;
	}

}
