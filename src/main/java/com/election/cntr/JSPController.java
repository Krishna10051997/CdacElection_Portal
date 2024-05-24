package com.election.cntr;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.election.model.Admin;
import com.election.model.CommunicationLead;
import com.election.model.Student;
import com.election.model.TLVote;
import com.election.model.TechnicalLead;
import com.election.service.AdminService;
import com.election.service.CLService;
import com.election.service.StudentService;
import com.election.service.TLService;
import com.election.service.TLVoteService;



@Controller
public class JSPController {
	
	@Autowired
	private TLService tlService;
	@Autowired
	private CLService clService;
	
	@Autowired
	private StudentService sService;
	
	@Autowired
	private AdminService AdService;
	
	@Autowired
	private TLVoteService tlVoteService;
	
	
	@RequestMapping("/Student_Register")
	public String showStudent() {
		return "Student_Register";
	}
	
	
	@RequestMapping("/Admin_Register")
	public String showAdmin() {
		return "Admin_Register";
	}
	
	
	
	
	@RequestMapping(value= {"/votetl1"} ,method = RequestMethod.POST)
	public String votetl1(Student student) {
		Student std = sService.getByEmail(student.getEmail());
		if(std!=null){
			if(std.getPassword().equals(student.getPassword())) {
				return "StudentProfile";
			}
		}
		
		return "redirect:/StudentLogin?msg='Invalid credentials!'";
	}
	
	
	@RequestMapping("/SValidate")
	public String studentLoginValidate() {
		return "SloginValidate";
	}
//	@RequestMapping("/Result")
//	public String rresult() {
//		return "Result";
//	}
	
	@RequestMapping("/Home")
	public String home() {
		return "HomePage";
	}
	
	@RequestMapping("/AdminLogin")
	public String adminLog() {
		return "AdminLogin";
	}
	
	@RequestMapping("/StudentLogin")
	public String studentLog2() {
		return "StudentLogin";
	}
	
	
	@RequestMapping("/AdminValidate")
	public String adminValid() {
		return "AdminValid";
	}
	
	@RequestMapping("/Result")
	public String resultt() {
		return "Result";
	}
	
	@RequestMapping("/StudentProfile")
	public String studentProfile() {
		return "StudentProfile";
	}
	@RequestMapping("/SProfile")
	public String sProfile() {
		return "SProfile";
	}
	@RequestMapping("/AProfile")
	public String AProfile() {
		return "AProfile";
	}
	
	
	@RequestMapping("/Voting")
	public String votingLanding() {
		return "VotingLanding";
	}
	
	@RequestMapping("/Footer")
	public String showFooter() {
		return "Footer";
	}
	@RequestMapping("/win")
	public String getwin(ModelMap model) {
		TLVote tlwin = tlVoteService.getwin();
		model.put("tlwinn", tlwin);
		return "Result";
	}
	
//	@RequestMapping("/VotingLanding")
//	public String getvl(ModelMap model) {
//		TLVote tlwin = tlVoteService.getwin();
//		model.put("tlwinn", tlwin);
//		return "VotingLanding";
//	}
//	
	@RequestMapping("/AboutUs")
	public String aboutUs() {
		return "AboutUs";
	}
	
	@RequestMapping("/Admin")
	public String admin() {
		return "Admin";
	}
	
	@RequestMapping("/CRRegistration")
	public String CRregistration() {
		return "CRRegistration";
	}
	@RequestMapping("/TLRegistration")
	public String TLregistration() {
		return "TLRegistration";
	}
	
	@RequestMapping("/tlclVote")
	public String tlclVote() {
		return "VotingTLCL";
	}
	
	@RequestMapping("/VotingTLCL")
	public String t2c2Vote() {
		return "VotingTLCL";
	}
	
	@RequestMapping("/CLVote")
	public String Votecll() {
		return "CLVote";
	}
	
	
	@RequestMapping(value= {"/tlVote2"} ,method = RequestMethod.GET)
	public String Votetll(ModelMap model) {
		List<TLVote> lst = tlVoteService.getAll();
		model.put("tvls", lst);
		return "TLVote2";
	}

	@RequestMapping(value= {"/Aadmin"} ,method = RequestMethod.GET)
	public String tlList(ModelMap model) {
		List<TechnicalLead> lst = tlService.getAll();
		List<CommunicationLead> lst2 = clService.getAll();
		model.put("tls", lst);
		model.put("cls", lst2);
		return "Admin";
	}
	


	
	@RequestMapping(value= {"/selectTL/{id}"} ,method = RequestMethod.GET)
	public String tlselect(@PathVariable int id, ModelMap model) {
		TechnicalLead uTl = tlService.getById(id);
		TLVote tlv = new TLVote();
		tlv.setFirst_name(uTl.getFirst_name());
		tlv.setLast_name(uTl.getLast_name());
		tlVoteService.add(tlv);
		
		List<TLVote> lst = tlVoteService.getAll();
		model.put("tvls", lst);
		return "TLVote";
	}
	
	
	
	@RequestMapping(value= {"/adminLogin"} ,method = RequestMethod.POST)
	public String adminlLogin(Admin admin, HttpSession session) {
	
		Admin atd = AdService.getByEmail(admin.getEmail());
		System.out.println(admin.getEmail() +" "+ atd );
		if(atd!=null){
			if(atd.getPassword().equals(admin.getPassword())) {
				session.setAttribute("adminloginsession", atd);
				
				return "redirect:/Aadmin";
			}
		}
		System.out.println("hii");
		return "redirect:/AdminLogin?msg='Invalid credentials!'";
	}
	
	
	@RequestMapping(value= {"/studentLogin"} ,method = RequestMethod.POST)
	public String studentLogin(Student student, HttpSession session) {
		
		Student std = sService.getByEmail(student.getEmail());
		if(std!=null){
			if(std.getPassword().equals(student.getPassword())) {
				session.setAttribute("studentloginsession", std);
				System.out.println(std.getHasVoted());
				return "StudentProfile";
			}
		}
		
		return "redirect:/StudentLogin?msg='Invalid credentials!'";
	}
	
	
	@RequestMapping(value= {"/studentLogout"} ,method = RequestMethod.GET)
	public String studentLogout( HttpSession session) {
		
		
				session.setAttribute("studentloginsession", null);
				session.setAttribute("adminloginsession", null);
		
				return "redirect:/StudentLogin";

	}
	
	
	@RequestMapping(value= {"/vote/{id}"} ,method = RequestMethod.GET)
	public String tlvv(@PathVariable int id, ModelMap model, HttpSession session) {
		
		Student studenttemp =  (Student) session.getAttribute("studentloginsession");
		studenttemp.setHasVoted("yes");
		TLVote tlv2 = tlVoteService.getById(id);
		int vote = tlv2.getVote();
		tlv2.setVote(vote + 1);
		tlVoteService.modify(tlv2);
		sService.add(studenttemp);
		return "redirect:/tlVote2";
	}
	
	
	
	@RequestMapping(value= {"/deleteTL/{id}"} ,method = RequestMethod.GET)
	public String tlDelete(@PathVariable int id, ModelMap model) {
		tlService.removeById(id);
		
		List<TechnicalLead> lst = tlService.getAll();
		model.put("tls", lst);
		return "redirect:/Admin";
	}
	
	

	@RequestMapping(value= {"/updateTL/{id}"} ,method = RequestMethod.GET)
	public String tlupdate(@PathVariable int id, ModelMap model) {
		TechnicalLead uTl = tlService.getById(id);
		model.put("utls", uTl);
		return "UpdateTL";
	}

	@PostMapping(value = {"/student"})
	public String saveStudent(@RequestBody Student student) {
		sService.add(student);
		return "StudentLogin";
	}
	@PostMapping(value = {"/aadmin"})
	public String saveadmin(@RequestBody Admin admin) {
		AdService.add(admin);
		return "redirect:/AdminLogin";
	}
	
	@PostMapping(value = {"/registerTL"})
	public String saveCL(@RequestBody TechnicalLead technicalLead) {
		tlService.add(technicalLead);
		return "StudenProfile";
	}
	
	@PostMapping(value = {"/registerCL"})
	public String saveCL(@RequestBody CommunicationLead communicationLead) {
		clService.add(communicationLead);
		return "StudenProfile";
	}

	
	@RequestMapping(value= {"/uuTL"} ,method = RequestMethod.POST)
	public String tlUpdate(TechnicalLead tlead, ModelMap model) {
		System.out.println("hiii");
		tlService.modify(tlead);
		List<TechnicalLead> lst = tlService.getAll();
		model.put("tls", lst);
		return "redirect:/Admin";
	}
	
	
	/*
	
	@RequestMapping(value= {"/car_upload.htm"} ,method = RequestMethod.POST)
	public String carUpload(@RequestParam(name = "id") int id, @RequestParam CommonsMultipartFile image, ModelMap model, HttpServletRequest request) {
		
		try {
		ServletContext sc = request.getServletContext();
		String filePath = sc.getRealPath("images");
		Path path = Paths.get(filePath);
		if(!Files.exists(path)) {
			Files.createDirectories(path);
		}
		
		String fileName = image.getOriginalFilename();
		fileName = fileName.substring(fileName.lastIndexOf('.'));
		fileName = id+fileName;
		path = path.resolve(fileName);
		Files.copy(image.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
		System.out.println(path);
		carService.upload(id, fileName);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		List<Car> lst = carService.getAll();
		model.put("cars", lst);
		return "car_list";
	}*/
	/*
	@RequestMapping(value= {"/car_upload.htm"} ,method = RequestMethod.POST)
	public String carUpload(@RequestParam(name = "id") int id, @RequestParam CommonsMultipartFile image, ModelMap model, HttpServletRequest request) {
		
		try {
		ServletContext sc = request.getServletContext();
		String filePath = sc.getRealPath("images");
		Path path = Paths.get(filePath);
		if(!Files.exists(path)) {
			Files.createDirectories(path);
		}
		
		String fileName = image.getOriginalFilename();
		fileName = fileName.substring(fileName.lastIndexOf('.'));
		fileName = id+fileName;
		path = path.resolve(fileName);
		Files.copy(image.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
		System.out.println(path);
		tlService.upload(id, fileName);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		List<TechnicalLead> lst = tlService.getAll();
		model.put("tls", lst);
		return "TLRegistration";
	
	*/
	
	
	
}
