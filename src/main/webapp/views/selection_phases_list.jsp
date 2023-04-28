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
			<div  id="selectionphaseListContainer"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
</body>

<script>
var form = {
		"id": "SelectionPhases",
		"title" : "SelectionPhases",
		
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "text",
				"name": "id",
				"label": "selectionPhase Id",
				"required": true,
				"placeHolder": "selectionPhase Id"
			}
			,{
				"type": "text",
				"name": "name",
				"label": "SelectionPhases",
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
				"label": "Add SelectionPhase",
				"applyTo": "list",
				"cssClass": "btn-danger"
			}
		],
		"dataProvider":{
			"collection":{"url":"http://localhost:9098/api/v1/selectionPhase"},
			"selector":{"url":""}
		}
	};
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/list-template.jsp">
	<jsp:param name="listContainerId" value="selectionphaseListContainer"/>
	<jsp:param name="listId" value="selectionPhaseTable"/>
	<jsp:param name="addPage" value="selection_phases"/>
</jsp:include>

</html>