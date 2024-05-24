package com.election.cntr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.election.model.CommunicationLead;
import com.election.model.Student;
import com.election.model.TechnicalLead;
import com.election.service.CLService;
import com.election.service.StudentService;
import com.election.service.TLService;

@RestController
public class ElectionController {
	
	@Autowired
	private StudentService studentService;
	@Autowired
	private CLService clService;
	@Autowired
	private TLService tlService;
	
	/*@GetMapping(value = {"/student"})
	public String getStudent(@RequestParam String first_name,@RequestParam String last_name,
			@RequestParam String gender,@RequestParam String phone,@RequestParam String course,
			@RequestParam String branch,@RequestParam String email,@RequestParam String password,@RequestParam String confirm_password)
	{
		Student student=new Student(first_name,last_name,gender,phone,course,branch,email,password,confirm_password);
		studentService.add(student);
		return "Student_Register";
	}*/
	
//	@PostMapping(value = {"/student"})
//	public String saveStudent(@RequestBody Student student) {
//		studentService.add(student);
//		return "StudentLogin";
//	}
//	
//	@PostMapping(value = {"/registerTL"})
//	public String saveCL(@RequestBody TechnicalLead technicalLead) {
//		tlService.add(technicalLead);
//		return "StudenProfile";
//	}
//	
//	@PostMapping(value = {"/registerCL"})
//	public String saveCL(@RequestBody CommunicationLead communicationLead) {
//		clService.add(communicationLead);
//		return "StudenProfile";
//	}
	/*
	@GetMapping(value = {"/updateTL/{id}"})
	public TechnicalLead tlGet(@PathVariable int id) {
		return tlService.getById(id);
	}
	*/
	/*
	@PutMapping(value = {"/updateTL"})
	public String productUpdate(@RequestBody TechnicalLead technicalLead) {
		tlService.modify(technicalLead);
		return "success";
	}
	*/
	
	@GetMapping(value = {"/tlList"})
	public List<TechnicalLead> tlList(){
		return tlService.getAll();
	}
	
	@GetMapping(value = {"/clList"})
	public List<CommunicationLead> clList(){
		return clService.getAll();
	}
}
