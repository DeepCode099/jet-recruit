<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp"%>
<script type="text/javascript" src="../js/forms/designation.js"></script>
</head>

<body>
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			
			<div class="container">
				<div class="row">
					<div class="col" id="designationContainer" style="margin-top: 8%">
						<h3>Designation</h3>
						<form id="Designation"></form>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
<script>
	$(document).ready(() => {
		var jetform=JetForm({"id":"designation", "parentId":"designationContainer", "form":designation});
		jetform.render();
	});
</script>

<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>
	
</html>


