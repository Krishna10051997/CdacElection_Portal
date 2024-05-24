package com.election.service;

import com.election.model.Admin;



public interface AdminService {
	void add(Admin admin);
	Admin getByEmail(String email);
}
