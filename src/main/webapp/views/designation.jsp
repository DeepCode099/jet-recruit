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
			<div class="col-md-9" id="designation_list" >
			</div>
		</div>
	</div>
</body>

<script>
	var form = {
		"id": "designations",
		"title" : "Designations",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [ 
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
					"url": "http://localhost:9098/jet/pis/designation"
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
	<jsp:param name="formContainerId" value="designation_list" />
	 <jsp:param name="formId" value="recruitmentSourceForm" />
	<jsp:param name="cancelPage" value="designation_list"/>
	<jsp:param name="successPage" value="designation_list"/>
</jsp:include>
<script>

</script>
</html>  
