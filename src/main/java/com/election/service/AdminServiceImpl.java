package com.election.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.election.dao.AdminDao;

import com.election.model.Admin;


@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;

	@Override
	public void add(Admin admin) {
		adminDao.save(admin);
	}

	@Override
	public Admin getByEmail(String email) {
		
		return adminDao.selectByEmail(email);
	}

	
	
}
