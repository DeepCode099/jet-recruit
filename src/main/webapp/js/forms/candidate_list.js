
	var candidateListForm = {
		"id": "candiateListForm",
		"parentId":"clientListFormContainer",
		"title" : "Candidate List",
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
				"type": "text",
				"name": "firstName",
				"label": "First Name",
				"required": true,
				"placeHolder": "First Name",
				"col":4
			},
			{
				"type": "text",
				"name": "comments",
				"label": "Comments",
				"required": true,
				"placeHolder": "Comments"
			},
			
			{
				"type": "text",
				"name": "address",
				"label": "Address",
				"required": true,
				"placeHolder": "Address"
			},
			{
				"type": "number",
				"name": "mobile",
				"label": "Mobile",
				"placeHolder": "Mobile"
			},
			
			{
				"type": "file",
				"name": "resume",
				"label": "Resume",
				
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
				"success": {"href":"candidate_list"},
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
				"success": {"href":"candidate"},
			}
		},
		{
			"name": "add",
			"type": "button",
			"label": "+Add Candidate",
			"applyTo": "list",
			"cssClass": "btn-primary",
			"handler": {
				"href": "candidate"
			}
		},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-primary",
			"handler": {
				"href": "candidate"
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
			"ajax": "http://localhost:9098/api/v1/candidate"
			
		},
		"selector": {
			"ajax": "http://localhost:9098/api/v1/candidate/{id}",
			

		},
		"create": {
			"ajax": "http://localhost:9098/api/v1/candidate",
			"method": "post",
			"pathParams":{},
			"queryParams":{},
			"requestParams":{}
		},
		"update": {
			"ajax": "http://localhost:9098/api/v1/candidate",
			"method": "put"
			
		},
		"delete": {
			"ajax": "http://localhost:9098/api/v1/candidate",
			"method": "delete"
		}
	}
};
