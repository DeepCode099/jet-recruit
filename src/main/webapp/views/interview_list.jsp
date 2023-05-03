


<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp"%>
</head>

<!-- body  -->
<body>
	<div class="row">
		<div class="col-md-3">
			<%@include file="../theme/nav_header.jsp"%>
			<%@include file="../theme/header.jsp"%>
		</div>
		<div class="col-md-9">
			<div class="container">
				<div id="interviewContainer" style="margin-top: 8%"></div>
			</div>
		</div>
	</div>
</body>

<!-- json  -->

<script>
var form = {
		"id": "interviewForm",
		"title" : "Interviews List",
		"namespace" : "",
		"enctype": "multipart/form-data",
				"fields": [
					{
						"type": "text",
						"name": "id",
						"label": "Interview Id",
						"required": true,
						"placeHolder": "Interview Id"
					},
				{
					"type": "text",
					"name": "interviewerId",
					"label": "InterviewerName",
					"required": true,
					"placeHolder": "Interviewer Name"
				},{
					"type": "time",
					"name": "  startTime",
					"label": "Start Time",
					"required": false
			    	}, {
					"type": "time",
					"name": "  endTime",
					"label": "End Time",
					"required": true,
					"placeHolder": "End Time"
				},	
			   
			  {
				"type": "text",
				"name": "remarks",
				"label": "Remarks",
				"required": true
		     	},
			    {
					"type": "text",
					"name": "result",
					"label": "Result",
					"required": true
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
				"cssClass": "btn-secondary"
			},
			{
				"name": "add",
				"type": "button",
				"label": "Add Interview",
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
<%@include file="../theme/js_scripts.jsp"%>
<jsp:include page="../template/list-template.jsp">
	<jsp:param name="listContainerId" value="interviewContainer" />
	<jsp:param name="listId" value="userDataTable" />
	<jsp:param name="addPage" value="interviewForm" />
</jsp:include>

</html>