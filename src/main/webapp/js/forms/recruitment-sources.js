
var recruitmentSources = {
	"id": "recruitmentSources",
	"parentId" :"recruitmentSourcesContainer",
	"title": "Recruitment Sources",
	
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
			"label": "Recuitment Sources",
			"required": true,
			"placeHolder": "Enter Recuitment Sources Name"
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
				"success": {"href":"recruitment_sources_list"},
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
				"success": {"href":"recruitment_sources"},
			}
		},
		{
			"name": "add",
			"type": "button",
			"label": "Add Recruitment Sources",
			"applyTo": "list",
			"cssClass": "btn-danger",
			"handler": {
				"href": "recruitment_sources"
			}
		},
		{
			"name": "edit",
			"type": "button",
			"label": "Edit",
			"applyTo": "row",
			"cssClass": "btn-danger",
			"handler": {
				"href": "recruitment_sources"
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
			"ajax": "http://localhost:9098/api/v1/recruitementSource",
			"method": "get",
		},
		"selector": {
			"ajax": "",
			"method": "get",
			"pathParams":{},
			"queryParams":{}

		},
		"create": {
			"ajax": "http://localhost:9098/api/v1/recruitementSource",
			"method": "post",
			"pathParams":{},
			"queryParams":{},
			"requestParams":{}
		},
		"update": {
			"ajax": "http://localhost:9098/api/v1/recruitementSource",
			"method": "put",
			
		},
		"delete": {
			"ajax": "http://localhost:9098/api/v1/recruitementSource",
			"method": "delete",
			"requestParams":{"id":"{id}"}
		}
	}
};
 