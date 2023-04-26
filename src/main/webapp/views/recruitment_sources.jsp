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
			<div class="col-md-9" id="recruitmentSourceForm" >
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
				"type": "select",
				"name": "recruitmentSourceId",
				"label": "Recruitment Source",
				"provider": {
					"url": "http://localhost:9099/api/v1/recruitementSource",
					"value": "id",
					"label": "name"
				},
				"required": true
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
					"url": "http://localhost:9099/api/v1/recruitementSource"
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
	<jsp:param name="formContainerId" value="recruitmentSourceForm" />
	 <jsp:param name="formId" value="recruitmentSourceForm" />
	<jsp:param name="cancelPage" value="recruitmentSources"/>
	<jsp:param name="successPage" value="recruitmentSources"/>
</jsp:include>
<script>

</script>
</html>  
