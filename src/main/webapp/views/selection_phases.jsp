
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
				<div  id="selectionPhaseFormContainer"  style="margin-top:8%"></div>
				</div>
			</div>
		</div>
	</body>
	
	<script>
	var form = {
		"id": "selectionphase",
		"title" : "Selection Phase",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [ 
			{
				"type": "text",
				"name": "name",
				"label": "Selection Phases",
				"required": true,
				
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
					"url": "http://localhost:9098/api/v1/selectionPhase"
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
	<%@include file="../theme/js_scripts.jsp" %>
	<jsp:include page="../template/form-template.jsp">
		<jsp:param name="formContainerId" value="selectionPhaseFormContainer" />
	    <jsp:param name="formId" value="selectionPhaseForm" />
	    <jsp:param name="cancelPage" value="selection_phases_list"/>
		<jsp:param name="successPage" value="selection_phases_list"/>
	 
		</jsp:include>
	<script>
	
	</script>
	</html> 




