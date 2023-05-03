<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp" %>
</head>


<body>
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="container">
			<div  id="vacancy_list"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
</body>


<script>
var form = {
		"id": "Vacancy",
		"title" : "Vacancy",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "number",
				"name": "id",
				"label": "vacancy id",
				"required": true,
				"placeHolder": "Vacancy Id"
			},
				{
				 
					"type": "select",
					"name": "departmentId",
					"label": "Department",
					"provider": {
							"url": "http://localhost:9097/jet/pis/department",
							"value": "id",
							"label": "name"
							},
						"required": true
					}, 
					{
						"type": "select",
						"name": "designationId",
						"label": "Designation",
						"provider": {
									"url": "http://localhost:9097/jet/pis/designation",
									"value": "id",
									"label": "name"
								},
								"required": true
					},
					{
					"type": "date",
					"name": "openingDate",
					"label": "Opening Date",
					"required": false
					},
					{
						"type": "date",
						"name": "closingDate",
						"label": "Closing Date",
						"required": false
					},
					{
						"type": "number",
						"name": "noOfVacancy",
						"label": "NoOfVacancy",
						"required": true,
						"placeHolder": "NoOfVacancy"
					},
					{
						"type": "select",
						"name": "recruiterId",
						"label": "recruiter ",
						"provider": {
									"url": "http://localhost:9097/jet/pis/employee",
									"value": "id",
									"label": "name"
								},
					},
					{
						"type": "select",
						"name": "hiringType",
						"label": "Hiring Type",
						"options": [{
							"value": "Permanent",
							"label": "Permanent"
						}, {
							"value": "Contractual",
							"label": "Contractual"
							
						}],
						"required": true
					},
					
					{
						"type": "select",
						"name": "hiringChannel",
						"label": "Hiring Channel",
						"options": [{
							"value": "Internal",
							"label": "Internal"
						}, {
							"value": "External",
							"label": "External"
							
						},{
							"value": "Both",
							"label": "Both"
							
						}],
						"required": true
					},
					{
						"type": "select",
						"name": "status",
						"label": "Status",
						"options": [{
							"value": "Filled",
							"label": "Filled"
						}, {
							"value": "Vacant",
							"label": "Vacant"
							
						},{
							"value": "Suspended",
							"label": "Suspended"
							
						}],
						"required": true
					},
					{
						"type": "number",
						"name": "minimumHiringCost",
						"label": "Minimum Hiring Cost",
						"required": true,
						"placeHolder": "Enter Minimum Hiring Cost"
					},
					{
						"type": "number",
						"name": "Maximum Hiring Cost",
						"label": "Maximum Hiring Cost",
						"required": true,
						"placeHolder": "Enter Maximum Hiring Cost"
					}],
					
			"actions": [{
				"name": "save",
				"type": "submit",
				"label": "Save",
				"applyTo": "form",
				"handler": {
					"type": "javascript",
					"func": "submitForm(event)",
					"method": "post",
					"url": "http://localhost:9098/api/v1/vacancy"
				},
				"cssClass": "btn-primary"
			}, {
				"name": "cancel",
				"type": "button",
				"label": "Cancel",
				"applyTo": "form",
				"cssClass": "btn-secondary"
			},
			{
				"name": "add",
				"type": "button",
				"label": "Add Vacancy",
				"applyTo": "list",
				"cssClass": "btn-danger"
			}
		],
		"dataProvider":{
			"collection":{"url":"http://localhost:9098/api/v1/vacancy"},
			"selector":{"url":""}
		}
	};
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/list-template.jsp">
	<jsp:param name="listContainerId" value="vacancy_list"/>
	<jsp:param name="listId" value="userDataTable"/>
	<jsp:param name="addPage" value="vacancy"/>
</jsp:include>
</html>