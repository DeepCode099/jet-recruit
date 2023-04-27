<!DOCTYPE html>
<html>
<head>
<%@include file="../theme/cdn.jsp" %>
</head>
<!-- body  -->
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<%@include file="../theme/left_side_navigation.jsp"%>
			</div>
			<div class="col-md-9" id="interviewForm"></div>
		</div>
	</div>
</body>


<!-- json  -->

<script>
var form = {
		"id": "interviewForm",
		"title" : "Interview Form",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
				"type": "select",
				"name": "candidateName",
				"label": "CandidateName",
				"required": true,
				"provider": {
					"url": "http://localhost:8082/api/v1/city/20600",
					"value": "id",
					"label": "name",
					"params":[
						{"name":"startId", "value":"#state"},
						{"name":"deleted", "value":"0"}
					]

				}
			},
			

			{
				"type": "select",
				"name": "interviewerName",
				"label": "interviewerName",
				"required": true,
				"provider": {
					"url": "http://localhost:8082/api/v1/city/20600",
					"value": "id",
					"label": "name",
					"params":[
						{"name":"startId", "value":"#state"},
						{"name":"deleted", "value":"0"}
					]

				}
			},
			{
				"type": "select",
				"name": "interviewMode",
				"label": "interviewMode",
				"required": true,
				"provider": {
					"url": "http://localhost:8082/api/v1/city/20600",
					"value": "id",
					"label": "name",
					"params":[
						{"name":"startId", "value":"#state"},
						{"name":"deleted", "value":"0"}
					]

				}
			},

			{
				"type": "date",
				"name": "interviewDate",
				"label": "InterViewDate",
				"required": false
			},
		  /*  {
				"type": "group",
				"name": "nameGroup",
				"label": "name",
				"cols": 2,
				"fields": [
					{
						"type": "time",
						"name": "startTime",
						"label": "StartTime",
						"required": true,
						"provider": {
							"url": "http://localhost:8082/api/v1/city/20600",
							"value": "id",
							"label": "name",
							"params":[
								{"name":"startId", "value":"#state"},
								{"name":"deleted", "value":"0"}
							]

						}
					}, {
						"type": "time",
						"name": "endTime",
						"label": "EndTime",
						"required": true,
						"provider": {
							"url": "http://localhost:8082/api/v1/city/20600",
							"value": "id",
							"label": "name",
							"params":[
								{"name":"stateId", "value":"#state"},
								{"name":"deleted", "value":"0"}
							]

						}
					}]
			}, 
 */		
			{
				"type": "text",
				"name": "remarks",
				"label": "Remarks",
				"required": false
			}, 
			
			{
				"type": "text",
				"name": "Result",
				"label": "Result",
				"required": false
			}
			
				],
		"actions": [{
				"name": "save",
				"type": "submit",
				"label": "Save",
				"applyTo": "form",
				"handler": {
					"type": "javascript",
					"func": "submitForm(event)",
					"method": "post",
					"url": "http://localhost:9099/api/v1/interview"
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
<jsp:include page="../template/form-template.jsp">
	<jsp:param name="formContainerId" value="interviewForm" />
	<jsp:param name="formId" value="interviewForm" />
	<jsp:param name="cancelPage" value="interview_list" />
	<jsp:param name="successPage" value="interview_list" />
</jsp:include>
<script>

</script>
</html>