package com.election.service;

import com.election.model.Student;

public interface StudentService {
	void add(Student student);
	Student getByEmail(String email);
}
