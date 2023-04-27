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
			<div class="col-md-9" id="employeeForm" >
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
				"name": "employee",
				"label": "Employee",
				"listable":false,
				"searchable": false
				
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
					"url": ""
				},
				"cssClass": "btn-primary"
			}, {
				"name": "cancel",
				"type": "button",
				"label": "Cancel",
				"applyTo": "form",
				"cssClass": "btn-secondary"
			}
		],
		"dataProvider":{
			"collection":{"url":""},
			"selector":{"url":""}
		}
	};
</script>
<jsp:include page="../template/form-template.jsp">
	<jsp:param name="formContainerId" value="employeeForm" />
	 <jsp:param name="formId" value="employeeForm" />
	<jsp:param name="cancelPage" value="employeeForm"/>
	<jsp:param name="successPage" value="employeeForm"/>
</jsp:include>
<script>

</script>
</html>  
