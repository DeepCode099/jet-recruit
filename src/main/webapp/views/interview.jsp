
<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js/forms/interview.js"></script>
</head>
<!-- body  -->
<body>
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="row">
			<div class="col-md-11">
				<div id="interviewFormContainer" style="margin-top: 8%"></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
var id="<%=request.getParameter("id")!=null? request.getParameter("id"):""%>";
console.log("id"+id);
$(document).ready(() => {
	var jetform=JetForm({"id":"interviewForm", "parentId":"interviewFormContainer", "form":interViewform});
	jetform.setDataKey(id);
	jetform.render();
});
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>
</html>
