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
				<div id="vacancyContainer" style="margin-top: 8%"></div>
			</div>
		</div>
	</div>
</body>

<script>
	$(document).ready(() => {
		var jetList=JetList({"id":"vacancyList", "parentId":"vacancyContainer", "form":vacancyForm});
		jetList.render();
	});
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>
</html>