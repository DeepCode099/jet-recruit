
var designation = {
	"id": "designation",
	"parentId" :"designationContainer",
	"title": "Designation",
	
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
			"type": "text",
			"name": "name",
			"label": "Designation",
			"id": true,
			"required": true,
			"placeHolder": "Enter Designation Name",
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
				"success": {"href":"designation_list"},
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
				"success": {"href":"designation"},
			}
		},
		{
			"name": "add",
			"type": "button",
			"label": "Add Designation",
			"applyTo": "list",
			"cssClass": "btn-danger",
			"handler": {
				"href": "designation"
			}
		},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-danger",
			"handler": {
				"href": "designation_list"
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
			"ajax": "http://localhost:9097/jet/pis/designation",
			"method": "get",
		},
		"selector": {
			"ajax": "",
			"method": "get",
			"pathParams":{},
			"queryParams":{}

		},
		"create": {
			"ajax": "http://localhost:9097/jet/pis/designation",
			"method": "post",
			"pathParams":{},
			"queryParams":{},
			"requestParams":{}
		},
		"update": {
			"ajax": "http://localhost:9097/jet/pis/designation",
			"method": "put",
			
		},
		"delete": {
			"ajax": "http://localhost:9097/jet/pis/designation",
			"method": "delete",
				"requestParams":{"id":"{id}"}
		}
	}
};
 