package com.election.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.election.dao.RegisterCLDao;
import com.election.dao.RegisterTLDao;
import com.election.model.CommunicationLead;
import com.election.model.TechnicalLead;

@Service
public class CLServiceImpl implements CLService{
	
	@Autowired
	private RegisterCLDao registerCLDao;
	
	@Override
	public void add(CommunicationLead communicationLead) {
		registerCLDao.save(communicationLead);
	}

	@Override
	public void modify(CommunicationLead communicationLead) {
		registerCLDao.save(communicationLead);
		
	}

	@Override
	public void removeById(int id) {
		registerCLDao.deleteById(id);
		
	}

	@Override
	public CommunicationLead getById(int id) {
		Optional<CommunicationLead> opt = registerCLDao.findById(id);
		if(opt.isPresent()) {
			return opt.get();
		}
		return null;	}

	@Override
	public List<CommunicationLead> getAll() {
		Iterable<CommunicationLead> itr = registerCLDao.findAll();
		List<CommunicationLead> lst = new ArrayList<CommunicationLead>();
		itr.forEach(ele->lst.add(ele));
		return lst;
	}

}
