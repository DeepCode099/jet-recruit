
	var candidateForm = {
		"id": "candiateForm",
		"parentId":"clientContainer",
		"title" : "Candidate Form",
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
				"type": "group",
				"name": "nameGroup",
				"label": "name",
				"cols": 3,
				"fields": [
				{
					"type": "text",
					"name": "firstName",
					"label": "First Name",
					"required": true,
					"placeHolder": "First Name"
				}, {
					"type": "text",
					"name": "middleName",
					"label": "Middle Name",
					"placeHolder": "Middle Name"
				}, {
					"type": "text",
					"name": "lastName",
					"label": "Last Name",
					"required": true,
					"placeHolder": "Last Name"
				}]
			}, 
		
			{
				"type": "date",
				"name": "appliedDate",
				"label": "Applied Date ",
				"required": false
			},
			
			 {
					"type": "select",
					"name": "departmentId",
					"label": "Department",
					"provider": {
						"url": "http://localhost:9097/jet/pis/department",
						"value": "id",
						"label": "name"
					},
					"required": true
			},{
				"type": "select",
				"name": "recruitmentSource",
				"label": "Recruitment Source",
				"provider": {
					"url": "http://localhost:9098/api/v1/recruitementSource",
					"value": "id",
					"label": "name"
				},
				"required": true
			},
			{
				"type": "select",
				"name": "designationId",
				"label": "Vacancy",
				"provider": {
							"url": "http://localhost:9097/jet/pis/designation",
							"value": "id",
							"label": "name"
						},
						"required": true
			},
			{
				"type": "select",
				"name": "recruiterId",
				"label": "recruiter ",
				"provider": {
							"url": "http://localhost:9097/jet/pis/employee",
							"value": "id",
							"label": "name"
						},
					
			},
			{
				"type": "select",
				"name": "selectionPhase",
				"label": "Selection Phase ",
				"provider": {
							"url": "http://localhost:9098/api/v1/selectionPhase",
							"value": "id",
							"label": "name"
						},
						
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
				"required": true,
				"placeHolder": "Mobile"
			},
				
		
			{
				"type": "text",
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
			"label": "Add Candidate",
			"applyTo": "list",
			"cssClass": "btn-danger",
			"handler": {
				"href": "candidate"
			}
		},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-danger",
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
			"ajax": "http://localhost:9098/api/v1/candidate",
			"method": "get",
		},
		"selector": {
			"ajax": "",
			"method": "get",
			"pathParams":{},
			"queryParams":{}

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
			"method": "put",
			
		},
		"delete": {
			"ajax": "http://localhost:9098/api/v1/candidate",
			"method": "delete",
				"requestParams":{"id":"{id}"}
		}
	}
};
