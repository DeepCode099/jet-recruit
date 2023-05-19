
var interviewListForm = {
		"id": "interviewForm",
		"title" : "Interviews",
		"parentId" :"interviewFormListContainer",
		"namespace" : "",
		"enctype": "multipart/form-data",
				"fields": [
					{
						"type": "text",
						"name": "id",
						"label": "Interview Id",
						"required": true,
						"id": true,
						"placeHolder": "Interview Id"
					},
					{
						"type": "text",
						"name": "name",
						"label": "InterviewerName",
						"required": true,
						"placeHolder": "Interviewer Name"
					},
					{
						"type": "date",
						"name": "interviewDate",
						"label": "InterViewDate",
						"required": false
					},
				{
					"type": "time",
					"name": "startTime",
					"label": "Start Time",
					"required": false
			    }, 
			    {
					"type": "text",
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
				"script": "submitForm(event)",
			},
			"redirects": {
				"success": {"href":""},
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
				"success": {"href":""},
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
			"ajax": "http://localhost:9098/api/v1/selectionPhase",
			"method": "get"
			
		},
		"selector": {
			"ajax": "http://localhost:9098/api/v1/selectionPhase/{id}",
			"method": "get",
			"requestParams":{"id":"#id"},
			"queryParams":{}

		},
		"create": {
			"ajax": "http://localhost:9098/api/v1/selectionPhase",
			"method": "post",
			"pathParams":{},
			"queryParams":{},
			"requestParams":{}
		},
			"update": {
			"ajax": "http://localhost:9098/api/v1/selectionPhase",
			"method": "put",
			
		},
		"delete": {
			"ajax": "http://localhost:9098/api/v1/selectionPhase/{id}",
			"method": "delete"
		}
	}
	};

 