package com.election.service;

import java.util.List;

import com.election.model.TechnicalLead;

public interface TLService {
	void add(TechnicalLead technicalLead);
	void modify(TechnicalLead technicalLead);
	void removeById(int id);
	TechnicalLead getById(int id);
	List<TechnicalLead> getAll();
}
