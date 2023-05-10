
	 <!DOCTYPE html>
	<html>
	<head>
	
	<%@include file="../theme/cdn.jsp" %>
	<script type="text/javascript" src="../js/forms/selection-phase.js"></script>
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
					<div class="col" id="selectionPhaseContainer" style="margin-top: 8%">
						<h3>Selection Phase</h3>
						<form id="selectionPhase"></form>
					</div>
				</div>
			</div>
		</div>
		</div>
	
</body>
	
<script>
	$(document).ready(() => {
		var jetform=JetForm({"id":"selectionPhase", "parentId":"selectionPhaseContainer", "form":selectionPhase});
		jetform.form.providers.selector.pathParams={"id":"<%=request.getParameter("id")%>"};
		
		jetform.render();
	});
</script>

	<%@include file="../theme/js_scripts.jsp" %>
	<jsp:include page="../template/jetform-template.jsp"/>

	</html> 




