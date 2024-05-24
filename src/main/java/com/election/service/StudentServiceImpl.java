package com.election.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.election.dao.StudentDao;
import com.election.model.Student;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;

	@Override
	public void add(Student student) {
		studentDao.save(student);
	}

	@Override
	public Student getByEmail(String email) {
		
		return studentDao.selectByEmail(email);
	}

	
}
