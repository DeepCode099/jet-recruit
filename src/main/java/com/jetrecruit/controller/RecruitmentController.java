package com.jetrecruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecruitmentController {
	@RequestMapping("/recruitmentSources")
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
	

}
