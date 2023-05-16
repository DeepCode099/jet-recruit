
var interviewForm = {
		"id": "interviewForm",
		"parentId":"interviewFormContainer",
		"title" : "Interview Form",
		"namespace" : "",
		"enctype": "multipart/form-data",
		"fields": [
			{
			"type": "hidden",
			"name": "id",
			"id": true,
			"required": true
			
			},
			{
					"type": "select",
					"name": "departmentId",
					"label": "Department",
					"provider": {
						"ajax": "http://localhost:9097/jet/pis/department",
						"value": "id",
						"label": "name"
					},
					"required": true
			},
			{
				"type": "select",
				"name": "candidateId",
				"label": "Candidate Name",
				"required": true,
				"provider": {
					"ajax": "http://localhost:9098/api/v1/candidate",
					"value": "id",
					"label": "firstName"
				}
			},
			{
				"type": "select",
				"name": "interviewerId",
				"label": "Interviewer Name",
				"required": true,
				"provider": {
					"ajax": "http://localhost:9097/jet/pis/employee",
					"value": "id",
					"label": "name"
				}
			},{
				"type": "select",
				"name": "interviewMode",
				"label": "Interview Mode",
				"required": true,
				"provider": {
					"ajax": "http://localhost:9098/api/v1/interview",
					"value": "id",
					"label": "name"
					}
			},{
				"type": "date",
				"name": "interviewDate",
				"label": "InterViewDate",
				"required": false
			},
				{
				"type": "group",
				"name": "nameGroup",
				"label": "name",
				"cols": 2,
				"fields": [

					{
						"type": "time",
						"name": "startTime",
						"label": "Start Time",
						"required": false
				    	}, 
				    	{
						"type": "time",
						"name": "endTime",
						"label": "End Time",
						"required": true,
						"placeHolder": "End Time"
					}]
			}, 
 	
			{
				"type": "text",
				"name": "remarks",
				"label": "Remarks",
				"required": false
			}, 
			
			{
				"type": "text",
				"name": "result",
				"label": "Result",
				"required": false
			}],
			"actions": [{
			"name": "save",
			"type": "submit",
			"label": "Save",
			"applyTo": "form",
			"handler": {
				"script": "submitForm(event)",
			},
			"redirects": {
				"success": {"href":"interview_list"},
				"failure": {"script":"alert('Saving operation failed')"}
			},
			"cssClass": "btn-primary"
		}, {
			"name": "cancel",
			"type": "button",
			"label": "Cancel",
			"applyTo": "form",
			"cssClass": "btn-secondary",
			"redirects": {
				"success": {"href":"interview"},
			}
		},
		{
			"name": "add",
			"type": "button",
			"label": "Add Interview",
			"applyTo": "list",
			"cssClass": "btn-danger",
			"handler": {
				"href": "interview"
			}
		},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-danger",
			"handler": {
				"href": "interview"
			}
		},
		{
			"name": "delete",
			"type": "button",
			"label": "Delete",
			"applyTo": "row",
			"cssClass": "btn-danger",
			/*"handler": {
				"script": "delete(event)"
			}*/
		}
	],
	"providers": {
		"collection": {
			"ajax": "http://localhost:9098/api/v1/interview",
			"method": "get"
		},
		"selector": {
			"ajax": "http://localhost:9098/api/v1/interview/{id}",
			"method": "get",
			"pathParams":{"id":"#id"},
			"queryParams":{}

		},
		"create": {
			"ajax": "http://localhost:9098/api/v1/interview",
			"method": "post",
			"pathParams":{},
			"queryParams":{},
			"requestParams":{}
		},
		"update": {
			"ajax": "http://localhost:9098/api/v1/interview",
			"method": "put"
			
		},
		"delete": {
			"ajax": "http://localhost:9098/api/v1/interview",
			"method": "delete"
		}
	}
	};