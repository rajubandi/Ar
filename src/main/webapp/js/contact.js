$(function(){
	$("#cls-form").validate(
			{
				errorElement: 'span',
			    errorClass: 'has-error',
				rules:
				{
					name: {required: true},
					email: {required: true},
					number: {required: true},					
					message: {required: true},					
				},
				messages:
				{
					name: {required: 'name'},
					email: {required: 'email'},
					number: {required: 'number'},					
					message: {required: 'message'},					
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