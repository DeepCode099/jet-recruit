
var selectionPhase = {
	"id": "selectionPhase",
	"parentId" :"selectionPhaseContainer",
	"title": "Selection Phase",
	
	"namespace": "",
	"enctype": "multipart/form-data",
	"fields": [
		{
			"type": "hidden",
			"name": "id",
			"id": true,
			"required": true
			
		},{
			"type": "text",
			"name": "name",
			"label": "Selection Phase",
			"id": true,
			"required": true,
			"placeHolder": "Enter Selection Phase Name",
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
				"success": {"href":"selection_phases_list"},
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
				"success": {"href":"selection_phases"},
			}
		},
		{
			"name": "add",
			"type": "button",
			"label": "Add Selection Phase",
			"applyTo": "list",
			"cssClass": "btn-danger",
			"handler": {
				"href": "selection_phases"
			}
		},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-danger",
			"handler": {
				"href": "selection_phases"
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
			"method": "get",
		},
		"selector": {
			"ajax": "",
			"method": "get",
			"pathParams":{},
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
			"ajax": "http://localhost:9098/api/v1/selectionPhase",
			"method": "delete",
			"requestParams":{"id":"{id}"}
		}
	}
};
 