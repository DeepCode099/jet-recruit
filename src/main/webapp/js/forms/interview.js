var interViewform = {
	"id": "interviewForm",
	"title": "Interview Form",
	"parentId": "interviewFormContainer",
	"namespace": "",
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
			"name": "candidateId",
			"label": "Candidate Name",
			"required": true,
			"provider": {
				"ajax": "http://localhost:9004/api/v1/currency",
				"value": "id",
				"label": "name"
			},
		},
		{
			"type": "select",
			"name": "interviewerId",
			"label": "Interviewer Name",
			"required": true,
			"provider": {
				"ajax": "http://localhost:9004/api/v1/currency",
				"value": "id",
				"label": "name"
			},

		},
		{
			"type": "select",
			"name": "interviewMode",
			"label": "Interview Mode",
			"required": true,
			"provider": {
				"ajax": "http://localhost:9004/api/v1/currency",
				"value": "id",
				"label": "name"
			},
		},

		{
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
				}, {
					"type": "time",
					"name": "endTime",
					"label": "End Time",
					"required": true,
					"placeHolder": "End Time"
				}

			]
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
		}

	],
	"actions": [{
		"name": "save",
		"type": "submit",
		"label": "Save",
		"applyTo": "form",
		"handler": {
			"script": "submitForm(event)",
		},
		"redirects": {
			"success": { "href": "interview_list" },
			"failure": { "script": "alert('Saving operation failed')" }
		},
		"cssClass": "btn-primary"
	}, {
		"name": "cancel",
		"type": "button",
		"label": "Cancel",
		"applyTo": "form",
		"cssClass": "btn-secondary",
		"redirects": {
			"success": { "href": "interview_list" },
		}
	},
	{
		"name": "add",
		"type": "button",
		"label": "Add Interview",
		"applyTo": "list",
		"cssClass": "btn-danger",
		"handler": {
			"href": "interview_list"
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
			"ajax": "",
			"method": "get"

		},
		"selector": {
			"ajax": "",
			"method": "get",
			"requestParams": { "id": "#id" },
			"queryParams": {}

		},
		"create": {
			"ajax": "",
			"method": "post",
			"pathParams": {},
			"queryParams": {},
			"requestParams": {}
		},
		"update": {
			"ajax": "",
			"method": "put",

		},
		"delete": {
			"ajax": "",
			"method": "delete"
		}
	}
};

