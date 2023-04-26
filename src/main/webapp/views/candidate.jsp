<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp" %>
</head>
<!-- body  -->
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<%@include file="../theme/left_side_navigation.jsp"%>
			</div>
			<div class="col-md-9" id="candidateForm"></div>
		</div>
	</div>
</body>


<!-- json  -->

<script>
	var form = {
		"id": "candiateForm",
		"title" : "Candidate Form",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
		{
				"type": "group",
				"name": "nameGroup",
				"label": "name",
				"cols": 3,
				"fields": [
				{
					"type": "text",
					"name": " firstName",
					"label": "First Name",
					"required": true,
					"placeHolder": "First Name"
				}, {
					"type": "text",
					"name": "  middleName",
					"label": "Middle Name",
					"placeHolder": "Middle Name"
				}, {
					"type": "text",
					"name": "  lastName",
					"label": "Last Name",
					"required": true,
					"placeHolder": "Last Name"
				}]
			}, 
		
			{
				"type": "date",
				"name": "appliedDate",
				"label": "Applied Date ",
				"required": false
			},
			
			 {
					"type": "select",
					"name": "departmentId",
					"label": "Department",
					"provider": {
						"url": "http://localhost:9098/jet/pis/department",
						"value": "id",
						"label": "name"
					},
					"required": true
			},{
				"type": "select",
				"name": "recruitmentSourceId",
				"label": "Recruitment Source",
				"provider": {
					"url": "http://localhost:9099/api/v1/recruitementSource",
					"value": "id",
					"label": "name"
				},
				"required": true
			},
			{
				"type": "select",
				"name": "designationId",
				"label": "Designation ",
				"provider": {
							"url": "http://localhost:9098/jet/pis/designation",
							"value": "id",
							"label": "name"
						},
						"required": true
			},
			{
				"type": "select",
				"name": "selectionPhaseId",
				"label": "Selection Phase ",
				"provider": {
							"url": "http://localhost:9099/api/v1/selectionPhase",
							"value": "id",
							"label": "name"
						},
						"required": true
			},
				
		
			{
				"type": "file",
				"name": "resume",
				"label": "Resume",
				"accept": "image/png, image/jpeg"
			}
		],
		"actions": [{
				"name": "save",
				"type": "submit",
				"label": "Save",
				"applyTo": "form",
				"handler": {
					"type": "javascript",
					"func": "submitForm(event)",
					"method": "post",
					"url": "http://localhost:8082/api/v1/user"
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
				"label": "Add Candidate",
				"applyTo": "list",
				"cssClass": "btn-danger"
			}
		],
		"dataProvider":{
			"collection":{"url":""},
			"selector":{"url":""}
		}
	};
</script>
<jsp:include page="../template/form-template.jsp">
	<jsp:param name="formContainerId" value="candidateForm" />
	<jsp:param name="formId" value="userForm" />
	<jsp:param name="cancelPage" value="candidate_list" />
	<jsp:param name="successPage" value="candidate_list" />
</jsp:include>
<script>

</script>
</html>