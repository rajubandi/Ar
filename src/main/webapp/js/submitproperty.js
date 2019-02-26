$(function(){
	$("#cls-form").validate(
			{
				errorElement: 'span',
			    errorClass: 'has-error',
				rules:
				{
					isBuyerrbuilder: {required: true},
					email: {required: true},
					number: {required: true},					
					expectprice: {required: true},	
					location: {required: true},
					addinfo: {required: true},
				},
				messages:
				{
					isBuyerrbuilder: {required: 'isBuyerrbuilder'},
					email: {required: 'email'},
					number: {required: 'number'},					
					expectprice: {required: 'expectprice'},	
					location: {required: 'location'},					
					addinfo: {required: 'addinfo'},	
					
				},
				errorPlacement: function(error, element)
				{
					if(element.attr("name") == "isBuyerrbuilder")
				        error.insertAfter(".isBuyerrbuilder_error").css("color", "red");
				      else if(element.attr("name") == "email")
				        error.insertAfter(".email_error").css("color", "red");
				      else if(element.attr("name") == "number")
					        error.insertAfter(".number_error").css("color", "red"); 
				      else if(element.attr("name") == "expectprice")
					        error.insertAfter(".expectprice_error").css("color", "red");		
				      else if(element.attr("name") == "location")
					        error.insertAfter(".location_error").css("color", "red");		
				      else if(element.attr("name") == "addinfo")
					        error.insertAfter(".addinfo_error").css("color", "red");				      
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
		