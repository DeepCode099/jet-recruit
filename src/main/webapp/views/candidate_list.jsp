<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp" %>
<script type="text/javascript" src="../js/forms/candidate_list.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="container">
					<div id="clientListFormContainer" style="margin-top: 8%"></div>
				</div>
			</div>
		</div>	
</body>

<script>
	$(document).ready(() => {
		var jetList=JetList({"id":"candiateListForm", "parentId":"clientListFormContainer", "form":candidateListForm});
		jetList.render();
	});
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>

</html>