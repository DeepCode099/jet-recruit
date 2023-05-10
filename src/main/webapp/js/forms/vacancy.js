
var vacancyForm = {
		"id": "vacancyForm",
		"parentId":"vacancyContainer",
		"title" : "Vacancy",
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
						"name": "designationId",
						"label": "Designation",
						"provider": {
									"ajax": "http://localhost:9097/jet/pis/designation",
									"value": "id",
									"label": "name"
								},
								"required": true
					},
					{
					"type": "date",
					"name": "openingDate",
					"label": "Opening Date",
					"required": false
					},
					{
						"type": "date",
						"name": "closingDate",
						"label": "Closing Date",
						"required": false
					},
					{
						"type": "number",
						"name": "noOfVacancy",
						"label": "NoOfVacancy",
						"required": true,
						"placeHolder": "NoOfVacancy"
					},
					{
						"type": "select",
						"name": "recruiterId",
						"label": "recruiter ",
						"provider": {
									"ajax": "http://localhost:9097/jet/pis/employee",
									"value": "id",
									"label": "name"
									
								},
					},
					{
						"type": "select",
						"name": "hiringType",
						"label": "Hiring Type",
						"options": [{
							"value": "Permanent",
							"label": "Permanent"
						}, {
							"value": "Contractual",
							"label": "Contractual"
							
						}],
						"required": true
					},
					
					{
						"type": "select",
						"name": "hiringChannel",
						"label": "Hiring Channel",
						"options": [{
							"value": "Internal",
							"label": "Internal"
						}, {
							"value": "External",
							"label": "External"
							
						},{
							"value": "Both",
							"label": "Both"
							
						}],
						"required": true
					},
					{
						"type": "select",
						"name": "status",
						"label": "Status",
						"options": [{
							"value": "Filled",
							"label": "Filled"
						}, {
							"value": "Vacant",
							"label": "Vacant"
							
						},{
							"value": "Suspended",
							"label": "Suspended"
							
						}],
						"required": true
					},
					{
						"type": "number",
						"name": "minimumHiringCost",
						"label": "Minimum Hiring Cost",
						"required": true,
						"placeHolder": "Enter Minimum Hiring Cost"
					},
					{
						"type": "number",
						"name": "Maximum Hiring Cost",
						"label": "Maximum Hiring Cost",
						"required": true,
						"placeHolder": "Enter Maximum Hiring Cost"
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
							"success": {"href":"vacancy_list"},
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
							"success": {"href":"vacancy"},
						}
					},
					{
						"name": "add",
						"type": "button",
						"label": "Add Vacancy",
						"applyTo": "list",
						"cssClass": "btn-danger",
						"handler": {
							"href": "vacancy"
						}
					},
					{
						"name": "edit",
						"type": "button",
						"label": "Edit",
						"applyTo": "row",
						"cssClass": "btn-danger",
						"handler": {
							"href": "vacancy"
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
						"ajax": "http://localhost:9098/api/v1/vacancy",
						"method": "get",
					},
					"selector": {
						"ajax": "",
						"method": "get",
						"pathParams":{},
						"queryParams":{}

					},
					"create": {
						"ajax": "http://localhost:9098/api/v1/vacancy",
						"method": "post",
						"pathParams":{},
						"queryParams":{},
						"requestParams":{}
					},
					"update": {
						"ajax": "http://localhost:9098/api/v1/vacancy",
						"method": "put"
						
					},
					"delete": {
						"ajax": "http://localhost:9098/api/v1/vacancy",
						"method": "delete",
						"requestParams":{"id":"{id}"}
					}
				}

};