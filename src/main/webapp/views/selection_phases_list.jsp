 <!DOCTYPE html>
<html>
<head>
<title>Selection Phases List</title>
<%@include file="../theme/cdn.jsp" %>
</head>
<!-- body  -->
<body>
 <%@include file="../theme/nav_header.jsp" %>
<%@include file="../theme/header.jsp" %>
	<div class="container">
	
		<div class="row">
		<%-- <div class="col-md-3">
		 <%@include file="../theme/nav_header.jsp" %></div> --%>
		 <div class="col-md-3">
			<%-- 	<%@include file="left-nav.jsp"%>
			 --%></div>
			<div class="col-md-9" id="selectionphaseListContainer" >
			</div>
		</div>
	</div>
</body>


<!-- json  -->

<script>
var form = {
		"id": "SelectionPhases",
		"title" : "SelectionPhases",
		
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "text",
				"name": "selectionphases",
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
			"collection":{"url":""},
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