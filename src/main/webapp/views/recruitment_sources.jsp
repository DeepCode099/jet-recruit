 <!DOCTYPE html>
<html>
<head>

<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js/forms/recruitment-sources.js"></script>

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
					<div class="col" id="recruitmentSourcesContainer" style="margin-top: 8%">
						<h3>Recruitment Sources Form</h3>
						<form id="recruitmentSources"></form>
					</div>
				</div>
			</div>
		</div>
		</div>
	
</body>



<script>
	$(document).ready(() => {
		var jetform=JetForm({"id":"recruitmentSources", "parentId":"recruitmentSourcesContainer", "form":recruitmentSources});
		jetform.render();
	});
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>
</html> 