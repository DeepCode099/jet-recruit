<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="left-nav-json.jsp" %> 
<div class="deznav">
            <div class="deznav-scroll mm-active">
				<ul class="metismenu mm-show" id="menu">
					<li class="menu-title">${company}</li>
					<li class="mm-active"><a class="has-arrow " href="javascript:void(0);" aria-expanded="false">
						<div class="menu-icon">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M2.5 7.49999L10 1.66666L17.5 7.49999V16.6667C17.5 17.1087 17.3244 17.5326 17.0118 17.8452C16.6993 18.1577 16.2754 18.3333 15.8333 18.3333H4.16667C3.72464 18.3333 3.30072 18.1577 2.98816 17.8452C2.67559 17.5326 2.5 17.1087 2.5 16.6667V7.49999Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
								<path d="M7.5 18.3333V10H12.5V18.3333" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
							</svg>
						</div>	
						<span class="nav-text">${dash}</span>
						</a>
						<ul aria-expanded="false" class="mm-collapse mm-show left" style="">
							<li class="mm-active"><a href="./index.html" class="mm-active">${dashL}</a></li>
							<li><a href="./index-2.html">${dashD}</a></li>
						</ul>
					</li>
					
					
					<!-- Recreument Tracker  -->
					<li class="mm-active"><a class="has-arrow " href="javascript:void(0);" aria-expanded="false">
						<div class="menu-icon">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M2.5 7.49999L10 1.66666L17.5 7.49999V16.6667C17.5 17.1087 17.3244 17.5326 17.0118 17.8452C16.6993 18.1577 16.2754 18.3333 15.8333 18.3333H4.16667C3.72464 18.3333 3.30072 18.1577 2.98816 17.8452C2.67559 17.5326 2.5 17.1087 2.5 16.6667V7.49999Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
								<path d="M7.5 18.3333V10H12.5V18.3333" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
							</svg>
						</div>	
						<span class="nav-text">Recruitment Tracker</span>
						</a>
						<ul aria-expanded="false" class="mm-collapse mm-show left" style="">
							<li class="mm-active"><a href="recruitmentSources" class="mm-active">Recruitment Sources</a></li>
							<li><a href="designation_list">Designation</a></li>
							<li class="mm-active"><a href="candidate_list">Candidate</a></li>
							<li><a href="selection_phases_list">Selection Phase</a></li>
							<li class="mm-active"><a href="interview_list">Interview</a></li>
							<li><a href="department_list">Department</a></li>
							<li><a href="vacancy_list">Vacancy</a></li>
							<li><a href="employee_list">Employee </a></li>
							
						</ul>
					</li>
					
			</div>
        </div> 
     


