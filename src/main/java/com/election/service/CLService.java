package com.election.service;

import java.util.List;

import com.election.model.CommunicationLead;

public interface CLService {
	void add(CommunicationLead communicationLead);
	void modify(CommunicationLead communicationLead);
	void removeById(int id);
	CommunicationLead getById(int id);
	List<CommunicationLead> getAll();
}
