 <!DOCTYPE html>
<html>
<head>

<%@include file="../theme/cdn.jsp" %>
</head>

<body>
	<div class="container">
	
		<div class="row">
		<div class="col-md-3">
				<%@include file="../theme/left_side_navigation.jsp"%>
			</div>
			<div class="col-md-9" id="recruitmentList" >
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
					"url": "http://localhost:9099/api/v1/recruitementSource"
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

<jsp:include page="../template/list-template.jsp">
	<jsp:param name="listContainerId" value="recruitmentList"/>
	<jsp:param name="listId" value="userDataTable"/>
	<jsp:param name="addPage" value="recruitment_sources"/>
</jsp:include>

</html>