 <!DOCTYPE html>
<html>
<head>
<title>Department Form</title>
<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js/forms/employee.js"></script>

</head>
<body>
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="container">
			<div  id="employeeContainer"  style="margin-top:8%"></div>
			</div>
		</div>
	</div>
</body>

<script>
	var id="<%=request.getParameter("id")!=null? request.getParameter("id"):""%>";
	console.log("id"+id);
	$(document).ready(() => {
		var jetform=JetForm({"id":"employee", "parentId":"employeeContainer", "form":employee});
		jetform.setDataKey(id);
		jetform.render();
	});
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>
</html> 