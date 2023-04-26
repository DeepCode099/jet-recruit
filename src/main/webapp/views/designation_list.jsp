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
			<div class="col-md-9" id="designation" >
			</div>
		</div>
	</div>
</body>

<script>
	var form = {
		"id": "Designations",
		"title" : "Designations",
		
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "text",
				"name": " designation",
				"label": "Designation",
				"required": true,
				"placeHolder": "Designation"
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
					"url": "http://localhost:9098/jet/pis/designation"
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
				"label": "Add Designations",
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
	<jsp:param name="listContainerId" value="designation"/>
	<jsp:param name="listId" value="userDataTable"/>
	<jsp:param name="addPage" value="designation"/>
</jsp:include>

</html>