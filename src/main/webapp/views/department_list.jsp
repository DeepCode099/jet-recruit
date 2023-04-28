 <!DOCTYPE html>
<html>
<head>
<title>Selection Phases List</title>
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
			<div  id="departmentListContainer"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
</body>

<script>
var form = {
		"id": "Department",
		"title" : "Department",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "text",
				"name": "id",
				
				"label": "Department Id",
				"required": true,
				"placeHolder": "Department Id"
			},
			{
				"type": "text",
				"name": "department",
				"label": "Department",
				"required": true,
				
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
					"url": "http://localhost:8082/api/v1/user"
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
				"label": "Add Department",
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
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/list-template.jsp">
	<jsp:param name="listContainerId" value="departmentListContainer"/>
	<jsp:param name="listId" value="departmentListTable"/>
	<jsp:param name="addPage" value="department"/>
</jsp:include>

</html>