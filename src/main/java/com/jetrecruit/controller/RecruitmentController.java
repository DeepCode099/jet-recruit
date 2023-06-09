package com.jetrecruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecruitmentController {
	@RequestMapping("/recruitment_sources_list")
	public String recruitmentSourcesList() {
		System.out.println("recruitmentSources");
		return "recruitment_sources_list";
		
	}
	@RequestMapping("/recruitment_sources")
	public String addRecruitmentSources() {
		System.out.println("recruitmentSources");
		return "recruitment_sources";
		
	}
	
	@RequestMapping("/candidate")
	public String addCandidate() {
		System.out.println("addCandidate");
		return "candidate";
		
	}
	@RequestMapping("/candidate_list")
	public String candidateList() {
		System.out.println("candidateList");
		return "candidate_list";
		
	}
	
	@RequestMapping("/designation_list")
	public String designationList() {
		System.out.println("designation_list");
		return "designation_list";
		
	}
	@RequestMapping("/designation")
	public String designation() {
		System.out.println("designation");
		return "designation";
		
	}
	
	@RequestMapping("/selection_phases_list")
	public String selectionPhaseList() {
		System.out.println("selection_phases_list");
		return "selection_phases_list";
		
	}

	@RequestMapping("/selection_phases")
	public String selectionPhases() {
		System.out.println("selection-phases");
		return "selection_phases";
		
	}
	
	@RequestMapping("/interview_list")
	public String interviewsList() {
		System.out.println("InterviewList");
		return "interview_list";
		
	}
	@RequestMapping("/interview")
	public String interviewForm() {
		System.out.println("Interview");
		return "interview";
		
	}
	
	@RequestMapping("/department_list")
	public String departmentList() {
		System.out.println("departmentList");
		return "department_list";
		
	}
	
	@RequestMapping("/department")
	public String department() {
		System.out.println("department");
		return "department";
		
	}
	
	@RequestMapping("/employee")
	public String employee() {
		return "employee";
		
	}
	@RequestMapping("/employee_list")
	public String employeeList() {
		System.out.println("employeeForm");
		return "employee_list";
		
	}
	@RequestMapping("/vacancy_list")
	public String vacancyList() {
		System.out.println("vacancy_list");
		return "vacancy_list";
		
	}
	@RequestMapping("/vacancy")
	public String vacancy() {
		System.out.println("vacancy");
		return "vacancy";
		
	}
	
	
}
