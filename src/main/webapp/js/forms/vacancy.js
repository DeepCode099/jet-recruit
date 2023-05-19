
var vacancyForm = {
	"id": "vacancyForm",
	"parentId": "vacancyContainer",
	"title": "Vacancy",
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
			"type": "group",
			"name": "vacancy",
			"label": "name",
			"col": 12,
			"fields": [
				{
					"type": "select",
					"name": "departmentId",
					"label": "Department",
					"provider": {
						"ajax": "http://localhost:9097/jet/pis/department",
						"value": "id",
						"label": "name"
					},
					"required": true,
					"col": 6
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
					"required": true,
					"col": 6
				},

				{
					"type": "date",
					"name": "openingDate",
					"label": "Opening Date",
					"required": false,
					"col": 6
				},
				{
					"type": "date",
					"name": "closingDate",
					"label": "Closing Date",
					"required": false,
					"col": 6
				},
				{
					"type": "number",
					"name": "noOfVacancy",
					"label": "NoOfVacancy",
					"required": false,
					"placeHolder": "NoOfVacancy",
					"col": 6
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
					"col": 6
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
					"required": true,
					"col": 6
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

					}, {
						"value": "Both",
						"label": "Both"

					}],
					"required": true,
					"col": 6
				},
			]
		},

		{
			"type": "group",
			"name": "StatusCost",
			"label": "name",
			"col": 12,
			"fields": [

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

					}, {
						"value": "Suspended",
						"label": "Suspended"

					}],
					"required": true,
					"col": 12
				},
				{
					"type": "number",
					"name": "minimumHiringCost",
					"label": "Minimum Hiring Cost",

					"placeHolder": "Enter Minimum Hiring Cost",
					"col": 12
				},
				{
					"type": "number",
					"name": "Maximum Hiring Cost",
					"label": "Maximum Hiring Cost",
					"placeHolder": "Enter Maximum Hiring Cost",
					"col": 12
				}
			]
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
			"success": { "href": "vacancy_list" },
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
			"success": { "href": "vacancy" },
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
		},
		"redirects": {
			"success": { "href": "vacancy_list" },
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
		},
		"redirects": {
			"success": { "href": "vacancy_list" },
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
			"method": "get"
		},
		"selector": {
			"ajax": "http://localhost:9098/api/v1/vacancy/{id}",
			"method": "get",
			"pathParams": { "id": "#id" },
			"queryParams": {}

		},
		"create": {
			"ajax": "http://localhost:9098/api/v1/vacancy",
			"method": "post",
			"pathParams": {},
			"queryParams": {},
			"requestParams": {}
		},
		"update": {
			"ajax": "http://localhost:9098/api/v1/vacancy",
			"method": "put"

		},
		"delete": {
			"ajax": "http://localhost:9098/api/v1/vacancy",
			"method": "delete"
		}
	}

};