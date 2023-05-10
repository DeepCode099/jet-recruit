<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp" %>
<script type= "text/javascript" src= "../js/forms/vacancy.js"></script>
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
					<div class="col" id="vacancyContainer" style="margin-top: 8%">
						<h3>Vacancy</h3>
						<form id="vacancyForm"></form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>

<script>
	$(document).ready(() => {
		var jetform=JetForm({"id":"vacancyForm", "parentId":"vacancyContainer", "form":vacancyForm});
		jetform.form.providers.selector.pathParams={"id":"<%=request.getParameter("id")%>"};
		
		jetform.render();
	});
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>
</html>