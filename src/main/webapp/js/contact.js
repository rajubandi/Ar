$(function(){
	
	jQuery.validator.addMethod('lettersonly', function(value, element) {
	    return this.optional(element) || /^[a-z. áãâäàéêëèíîïìóõôöòúûüùçñ]+$/i.test(value);
	}, "Please Enter Valid Name");

	   jQuery.validator.addMethod("mobileNO", function(phone_number, element) {
	   phone_number = phone_number.replace(/\s+/g, ""); 
	 return this.optional(element) || phone_number.length > 9 &&
	   phone_number.match(/^[6-9]\d+$/);
	}, "Invalid Mobile Number"); 
	   
	$("#cls-form").validate(
			{
				errorElement: 'span',
			    errorClass: 'has-error',
				rules:
				{
					name: {required: true,lettersonly: true},
					email: {required: true,email: true},
					number: {required: true, number: true, mobileNO: true, minlength: 10, maxlength: 10},					
					//message: {required: true},					
				},
				messages:
				{
					name: {required: 'name'},
					email: {required: 'email'},
					number: {required: 'number'},					
					//message: {required: 'message'},					
				},
				errorPlacement: function(error, element)
				{
					if(element.attr("name") == "name")
				        error.insertAfter(".name_error").css("color", "red");
				      else if(element.attr("name") == "email")
				        error.insertAfter(".email_error").css("color", "red");
				      else if(element.attr("name") == "number")
					        error.insertAfter(".number_error").css("color", "red"); 
				      else if(element.attr("name") == "message")
					        error.insertAfter(".message_error").css("color", "red");				     				      
				      else
				        error.insertAfter(element);
				}	
			});				
});

		//remove borders
		function removeBorder(el){	
			  $("#"+el).css("border", "");
			  $("#"+el).css('color','black');
			  $('#'+el).addClass('default-class');
			  if ($("#" + el+"_chosen").length)
				{
					$("#" +el+"_chosen").children('a').css('border-color','black');
				}
		}			