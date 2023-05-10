
var department = {
	"id": "department",
	"parentId" :"departmentContainer",
	"title": "Department",
	
	"namespace": "",
	"enctype": "multipart/form-data",
	"fields": [{
			"type": "hidden",
			"name": "id",
			"id": true,
			"required": true
			
		},
		{
			"type": "text",
			"name": "name",
			"label": "Department",
			"required": true,
			"placeHolder": "Enter Department Name"
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
				"success": {"href":"department_list"},
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
				"success": {"href":"department"},
			}
		},
		{
			"name": "add",
			"type": "button",
			"label": "Add Department",
			"applyTo": "list",
			"cssClass": "btn-danger",
			"handler": {
				"href": "department"
			}
		},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-danger",
			"handler": {
				"href": "department"
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
			"ajax": "http://localhost:9097/jet/pis/department",
			"method": "get",
		},
		"selector": {
			"ajax": "",
			"method": "get",
			"pathParams":{},
			"queryParams":{}

		},
		"create": {
			"ajax": "http://localhost:9097/jet/pis/department",
			"method": "post",
			"pathParams":{},
			"queryParams":{},
			"requestParams":{}
		},
			"update": {
			"ajax": "http://localhost:9097/jet/pis/employee",
			"method": "put",
			
		},
		"delete": {
			"ajax": "http://localhost:9097/jet/pis/department",
			"method": "delete",
				"requestParams":{"id":"{id}"}
		}
	}
	};

 