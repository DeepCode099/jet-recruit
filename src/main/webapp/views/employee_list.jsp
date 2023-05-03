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
			<div id="employeeList" style="margin-top:8%"></div>
		</div>
	</div>
	</div>
</body>

<script>
	var form = {
		"id": "employee",
		"title" : "Employee",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "text",
				"name": "id",
				"label": "Employee Id",
				"required": true,
				"placeHolder": "Employee Id"
			},
			{
				"type": "text",
				"name": "name",
				"label": "Employee",
				"required": true,
				"placeHolder": "Employee"
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
					"url": "http://localhost:9098/jet/pis/employee"
				},
				"cssClass": "btn-primary"
			}, {
				"name": "cancel",
				"type": "button",
				"label": "Cancel",
				"applyTo": "form",
				"handler": {
					"type": "javascript",
					"func": "alert('ok');"
				},
				"cssClass": "btn-secondary"
			},
			{
				"name": "add",
				"type": "button",
				"label": "Add Employee",
				"applyTo": "list",
				"cssClass": "btn-danger"
			}
		],
		"dataProvider":{
			"collection":{"url":"http://localhost:9098/jet/pis/employee"},
			"selector":{"url":""}
		}
	};
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/list-template.jsp">
	<jsp:param name="listContainerId" value="employeeList"/>
	<jsp:param name="listId" value="userDataTable"/>
	<jsp:param name="addPage" value="employee"/>
</jsp:include>

</html>