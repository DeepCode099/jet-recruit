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
			
			<div class="row">
			<div class="col-md-11">
				<div id="vacancyContainer" style="margin-top: 8%"></div>
				</div>
			</div>
					<div class="col-md-12">
					<div class="row">
						<div  id="vacancy">
						</div>
						<!-- <div class="col-md-6" id="contact">
						</div> -->
					</div>
					</div>
					
					<div class="col-md-12">
					<div class="row">
						<div  id="StatusCost">
						</div>
				  </div>
				  </div>
		</div>
		</div>
	
</body>
<script>
	var id="<%=request.getParameter("id")!=null? request.getParameter("id"):""%>";
	console.log("id"+id);
	$(document).ready(() => {
		var jetform=JetForm({"id":"vacancyForm", "parentId":"vacancyContainer", "form":vacancyForm});
		jetform.setDataKey(id);
		jetform.render();
	});
</script>
<%@include file="../theme/js_scripts.jsp" %>
<jsp:include page="../template/jetform-template.jsp"/>
</html>