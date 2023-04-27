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
			<div  id="recruitmentList"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
</body>

<script>
	var form = {
		"id": "recruitmentSource",
		"title" : "Recruitment Source",
		
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "text",
				"name": " recruitmentSourceId",
				"label": "Recruitment Source",
				"required": true,
				"placeHolder": "Recruitment Source"
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
					"url": ""
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
				"label": "Add Recruitment Sources",
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
	<jsp:param name="listContainerId" value="recruitmentList"/>
	<jsp:param name="listId" value="userDataTable"/>
	<jsp:param name="addPage" value="recruitment_sources"/>
</jsp:include>

</html>

