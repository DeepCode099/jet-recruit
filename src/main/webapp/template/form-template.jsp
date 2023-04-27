
<!-- templates  -->
<script id="jf-form-template" type="text/x-handlebars-template">          
  <form id="{{id}}" name="{{name}}" enctype="{{enctype}}">
    <h2>{{title}}</h2>
	<h5>{{subtitle}}</h5>
  </form>
</script>

<!-- templates  -->
<script id="jf-text-template" type="text/x-handlebars-template">          
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{name}}" placeholder="{{placeHolder}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}}>
  </div>
</script>

<script id="jf-date-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}">
  </div>
</script>

<script id="jf-email-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}">
  </div>
</script>

<script id="jf-password-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}"  minlength="{{minLength}}">
  </div>
</script>

<script id="jf-number-template" type="text/x-handlebars-template">
  <div class="form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}" maxlength="{{maxlength}}">
  </div>
</script>


<script id="jf-radio-template" type="text/x-handlebars-template">
  <div class="form-group" id="{{name}}-form-group">
    <label class="form-label">{{label}}</label>
	{{#each options}}
    	<div class="form-check">
      		<input type="radio" name="{{../name}}" value="{{value}}" checked="checked"> <label class="form-check-label" for="{{../name}}">{{label}}</label>
    	</div>
	 {{/each}}
  </div>
</script>

<script id="jf-checkbox-template" type="text/x-handlebars-template">
  <div class="form-group" id="{{name}}-form-group">
    <label for="{{name}}" class="form-label">{{label}}</label>
	{{#each options}}
    	<div class="form-check">
      		<input type="checkbox" name="{{../name}}" value="{{value}}" checked="checked"> <label class="form-check-label" for="{{../name}}">{{label}}</label>
    	</div>
	 {{/each}}
  </div>
</script>

<script id="jf-select-template" type="text/x-handlebars-template">
	<div class="form-group">	
		<label for="{{name}}" class="form-label">{{label}}</label>
		<select name="{{name}}" id="{{name}}" class="form-control">
			<option value="-1">Select {{label}}</option>
			{{#each options}}
            	<option value="{{value}}">{{label}}</option>
            {{/each}}
		</select>
	</div>
</script>

<script id="jf-file-template" type="text/x-handlebars-template">
	<div class="form-group">	
		<label for="{{name}}" class="form-label">{{label}}</label>
		<input type="file" id="{{name}}" name="{{name}}" class="form-control" accept="{{accept}}"/>
	</div>
</script>

<script id="jf-field-group-template" type="text/x-handlebars-template">
	<div class="row" id="{{name}}">
			
	</div>
</script>

<script id="jf-form-actions-template" type="text/x-handlebars-template">
	<div class="container mt-3">
		<div class="row" id="action-row">
			<div class="col-md-12">
				<div class="float-right">
					{{#each []}}
						{{#if_ne applyTo "list"}}
							{{#if_eq handler.type "javascript"}}
								<button name="{{name}}" id="{{name}}" type="{{type}}" applyto="{{applyTo}}" class="btn {{cssClass}}" onclick="{{handler.func}}">{{label}}</button>
							{{/if_eq}}
					
							{{#if_ne handler.type "javascript"}}
	  							<button name="{{name}}" id="{{name}}" type="{{type}}" applyto="{{applyTo}}" class="btn {{cssClass}}" onclick="{{name}}OnClick(event)">{{label}}</button>
							{{/if_ne}}
						{{/if_ne}}
					{{/each}}
				</div>
			</div>
		</div>
	</div>
</script>

<script id="jf-button-template" type="text/x-handlebars-template">
	{{#if_eq handler ""}}
  		<button name="{{name}}" id="{{name}}" type="{{type}}" class="btn btn-primary" onclick="{{name}}OnClick(event)">{{label}}</button>
	{{/if_eq}}
	
	{{#if_ne handler ""}}
		{{#if_eq handler.type "javascript"}}
	  		<button name="{{name}}" id="{{name}}" type="{{type}}" class="btn btn-primary" onclick="{{handler.func}}">{{label}}</button>
		{{/if_eq}}
	{{/if_ne}}

</script>

<script id="jf-link-template" type="text/x-handlebars-template">
	{{#if_eq handler.type "javascript"}}
  		<a name="{{name}}" id="{{name}}" onclick="{{handler.func}}"><i class="fa {{label}}" aria-hidden="true"></i></a>
	{{/if_eq}}
</script>


<script id="jf-list-template" type="text/x-handlebars-template">
	<div class="form-group">
		<label for="{{name}}" class="form-label">{{label}}</label>
		<table class="table table-bordered" id="{{name}}">
			<thead>
				<tr>
					{{#each fields}}
						<td>{{label}}</td>
					{{/each}}
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
	</div>
</script>

<script id="jf-list-field-template" type="text/x-handlebars-template">
	<tr>
		{{#each fields as | field}}
			<td>{{>textField}}</td>
		{{/each}}
	</tr>
</script>

<!--  List sub field elements -->
<!-- templates  -->
<script id="list-text-template" type="text/x-handlebars-template">          
    <input type="{{type}}" class="form-control" name="{{name}}" placeholder="{{placeHolder}}" id="{{name}}" value="{{value}}" {{#if required}}required{{/if}}>
</script>

<script id="list-date-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}">
</script>

<script id="list-email-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}">
</script>

<script id="list-password-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}"  minlength="{{minLength}}">
</script>

<script id="list-number-template" type="text/x-handlebars-template">
    <input type="{{type}}" class="form-control" name="{{name}}" id="{{name}}" value="{{value}}" maxlength="{{maxlength}}">
</script>


<script id="list-radio-template" type="text/x-handlebars-template">
	{{#each options}}
      	<input type="radio" name="{{../name}}" value="{{value}}" checked="checked"> <label class="form-check-label" for="{{../name}}">{{label}}</label>
	 {{/each}}
  </div>
</script>

<script id="list-checkbox-template" type="text/x-handlebars-template">
	{{#each options}}
      	<input type="checkbox" name="{{../name}}" value="{{value}}" checked="checked"> <label class="form-check-label" for="{{../name}}">{{label}}</label>
	 {{/each}}
  </div>
</script>

<script id="list-select-template" type="text/x-handlebars-template">
	<select name="{{name}}" id="{{name}}" class="form-control">
		<option value="-1">Select {{label}}</option>
		{{#each options}}
        	<option value="{{value}}">{{label}}</option>
		{{/each}}
	</select>
</script>

<script id="list-file-template" type="text/x-handlebars-template">
	<input type="file" id="{{name}}" name="{{name}}" class="form-control" accept="{{accept}}"/>
</script>

 <!-- script  -->
<script>
var formContainerId='<%=request.getParameter("formContainerId")%>';
var formId='<%=request.getParameter("formId")%>';

const templates = {            //object for mapping object to id
    text: '#jf-text-template',
    date: '#jf-date-template',
    submit: '#jf-button-template',
    email: '#jf-email-template',
    password: '#jf-password-template',
    number: '#jf-number-template',
    select : '#jf-select-template',
    radio: '#jf-radio-template',
    checkbox : '#jf-checkbox-template',
    file : '#jf-file-template',
    list : '#jf-list-template',
    form : '#jf-form-template',
    list_text: '#list-text-template',
    list_date: '#list-date-template',
    list_email: '#list-email-template',
    list_password: '#list-password-template',
    list_number: '#list-number-template',
    list_select : '#list-select-template',
    list_radio: '#list-radio-template',
    list_checkbox : '#list-checkbox-template',
    list_file : '#list-file-template',
    group : '#jf-field-group-template',
    button : '#jf-button-template',
    form_actions : '#jf-form-actions-template',
    link : '#jf-link-template'
};

$(document).ready(() => {
	renderForm();
	fillOptions();
});

function renderForm() {
	renderFormObject()
	renderFormFields();
    renderFormGroups();
    renderFormLists();
    renderFormActions();
}

function renderFormObject(){
	const template = $(templates['form']).html();
    const compiledTemplate = Handlebars.compile(template);
    const html = compiledTemplate(form);
    $('#' + formContainerId).append(html);
}

function renderFormFields(){
	// Loop through fields array
    form.fields.forEach(field => {
    	//console.log(field.group + "");
        if (!(field.group && field.group != '')) {
            const template = $(templates[field.type]).html();
            const compiledTemplate = Handlebars.compile(template);
            const html = compiledTemplate(field);
            $('#' + form.id).append(html);
        }
    });

    // Loop through fields array
    form.fields.forEach(field => {
        if (field.group && field.group != '') {
            const template = $(templates[field.type]).html();
            const compiledTemplate = Handlebars.compile(template);
            const html = "<div class=\"col\">" + compiledTemplate(field) + "</div>";
            $('#' + field.group).append(html);
        }
    });

}
function renderFormGroups(){
	form.fields.forEach(field => {
        if (field.type == "group") {
            field.fields.forEach(subfield => {
                const template = $(templates[subfield.type]).html();
                const compiledTemplate = Handlebars.compile(template);
                const html = "<div class=\"col\">" + compiledTemplate(subfield) + "</div>";
                $('#' + field.name).append(html);
            });
        }
    });
}

function renderFormLists(){
    form.fields.forEach(field => {
        if (field.type == "list") {
        	addListRow(field);
        	
			var td=$('#'+field.name).find('tr').find('td').last();
			$(td).children('a[name="deleteRow"]').hide();
            //$('#' + field.name).append(html);
        }
    });
}

function renderFormActions(){
    if(form.actions.length>0){
	    const template = $(templates['form_actions']).html();
	    const compiledTemplate = Handlebars.compile(template);
	    const html = compiledTemplate(form.actions);
	    $('#' + form.id).append(html);
    }
}

function fillOptions() {
	console.log("populateSelectCheckboxRadio");
    form.fields.forEach(field => {
        if (field.provider && field.provider.url) {
            var provider = field.provider;
            if (provider.url.length !== 0) {
                $.ajax({
                    type: "GET",
                    url: provider.url,
                    dataType: "json",
                    contentType: "application/json"
                })
                .done(function(data) {
                	var select=(field.type == "select");
                	var checkbox=(field.type == "checkbox");
                	var radio=(field.type == "radio");
                    var i=0;
                    $.each(data, function(key, value) {
                    	if(select){
                    		$("#" + field.name).append(new Option(value.name, value.id));
                    	}else{
                    		var div=$('<div>', {
							    class: 'form-check'
							});
							
                        	$('<input />', { 
                        		type: field.type, 
                        		id: field.name+(i++), 
                        		name: field.name,
                        		value: key }).appendTo(div);
                        	
							$('<label />', {
								class:'form-check-label ml-1',
								for:field.name,
								text: value }).appendTo(div);

							$("#" + field.name+"-form-group").append(div);
							//$("#" + field.name+"-form-group").append("<div class=\"form-check\"><input type=\"checkbox\" name=\""+field.name+"\" value=\""+key+"\"> <label class=\"form-check-label\" for=\""+field.name+"\">"+value+"</label>");
							//$("#" + field.name+"-form-group").append("<div class=\"form-check\"><input type=\"radio\" name=\""+field.name+"\" value=\""+key+"\"> <label class=\"form-check-label\" for=\""+field.name+"\">"+value+"</label>");
                    	}
                    });
                })
                .fail(function(data) {
                    console.log(data);
                });
            }
        }
    });
}

function actionOnClick(event){
	 event.preventDefault();
	 var action=findAction(event);
	 callUrl(action);
}

function findAction(event){
	 var target = $( event.target);
	 var actionName=$(target).attr("name");
	 var actionType=$(target).attr("type");
	 var applyTo=$(target).attr("applyto");
	 console.log(actionName+" - "+actionType+" - "+applyTo);
	 var action;
	 form.actions.forEach(a => {
		 if(a.name==actionName && a.type==actionType && a.applyTo==applyTo){
			 action=a;
		 }
	 });
	 console.log(action);
	 return action;
}

function callUrl(action){
	
	var handler=action.handler;
	console.log(handler);
    $.ajax({
        url: handler.url,
        type: handler.method,
        data: JSON.stringify(formData),
        contentType: 'application/json',
        success: function(response) {
            alert('URL is called..');
        },
        error: function(error) {
            alert('Error: URL call failed..');
        }
    });
}
function formSerialize(form) {
	var formdata = new FormData(form);
	var object = {};
	formdata.forEach(function(value, key) {
		var keySpace = key.trim();
		var keyValue = keySpace;
		if (keyValue == "") {
			delete object[keyValue];
		} else {
			object[keyValue] = value;
		}
	});
	return object;
}

function submitForm(event) {
	alert("submit form called");
    event.preventDefault();
    var action=findAction(event);
    var handler=action.handler;
    console.log(handler);
    var formData = $('#'+form.id)[0];
    var formObject = formSerialize(formData);
     console.log(formObject);
    var jsonStringData=JSON.stringify(formObject);
    
    // make AJAX request
    $.ajax({
        url: handler.url,
        type: handler.method,
        data: jsonStringData,
        contentType: 'application/json',
        success: function(response) {
            alert('Data saved in API URL');
        },
        error: function(error) {
            alert('Error: data not saved');
            location.href="<%=request.getParameter("cancelPage")%>";
        }
    });

}

Handlebars.registerHelper('if_eq', function(a, b, opts) {
    if(a === b) // Or === depending on your needs
        return opts.fn(this);
    else
        return opts.inverse(this);
});

Handlebars.registerHelper('if_ne', function(a, b, opts) {
    if(a === b) // Or === depending on your needs
    	return opts.inverse(this);
    else
    	return opts.fn(this);
});
Handlebars.registerPartial('textField', Handlebars.compile('#jf-text-template'));

function saveOnClick(event){
	 event.preventDefault();
	 submitForm(event);
}

function cancelOnClick(event){
	 event.preventDefault();
	 location.href="<%=request.getParameter("cancelPage")%>";
}

function addRow(event){
	var target = $( event.target);
	var table=$(target).parents('table');

	var field=findFieldByNameAndType($(table).attr('id'), "list");
	
	var elementType = $(target).prop('nodeName');
	if(elementType=='a' || elementType=='button'){
		$(target).hide();
		$(target).siblings().show();
	}else{
		$(target).parent().hide();
		$(target).parent().siblings().show();
	}
	
	addListRow(field);
}

function deleteRow(event){
	var target = $( event.target);
	if(confirm('Are you sure to delete the row?')){
		var tbody=$(target).parents('tbody');
		if($(tbody).find('tr').length>1){
			$(target).closest('tr').remove();

			if($(tbody).find('tr').length==1){
				var td=$(tbody).find('tr').find('td').last();
				$(td).children('a[name="deleteRow"]').hide();
				$(td).children('a[name="addRow"]').show();
			}else{
				var td=$(tbody).find('tr').last().find('td').last();
				$(td).children('a[name="deleteRow"]').show();
				$(td).children('a[name="addRow"]').show();
			}
		}
		
		//var lastAdd=$(target).parents('tbody').find('tr').last().find('td').last().;
		
	}
	//var tr=$(target).parents('tr');
	//var tbody=$(target).parents('tbody');
	
	//deleteListRow(event);
}

function addListRow(field){
   	var tr=$('<tr />');
	//var html="<tr>";
    field.fields.forEach(subfield => {
        const template = $(templates["list_"+subfield.type]).html();
        const compiledTemplate = Handlebars.compile(template);
        var html=compiledTemplate(subfield)
        $('<td />').append(html).appendTo(tr);
        //var td=$('<td />');
        //td.append(html).appendTo(tr);
        //html+= "<td>" + compiledTemplate(subfield) + "</td>";
        
    });
    
    if(field.actions.length>0){
    	//var html= "";
    	var td=$('<td />');
    	field.actions.forEach(action => {
	    	const template = $(templates[action.type]).html();
	    	const compiledTemplate = Handlebars.compile(template);
	    	//html+= compiledTemplate(action);
	    	$(td).append(compiledTemplate(action));
    	});
    	//$('<td />', html+= "</td>";
    }
    $(td).appendTo(tr);
   // html+= "</tr>";
   $(tr).appendTo($('#' + field.name).find('tbody'));
}

function findFieldByNameAndType(name, type){
	var field;
	form.fields.forEach(f => {
		if(f.name==name && f.type==type){
			field=f;
		}
	});
	return field;
}
</script>