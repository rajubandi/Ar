
var validation = true;
var mobilevalidation=true;
var subValidation =false;

		
/* $('#crtpassword').blur(function() {
	
	 cpassword =$('#cpassword').val();
	 
	 crtpassword=$('#crtpassword').val();
	 
	 if(cpassword != crtpassword)
		 {
		 alert("Password and Retype password should be Matched")
		 $('#submitModel').prop('disabled', true);
		 
		 }
	 else
		 {
		 
		 $('#submitModel').prop('disabled', false);
		 }
	 
	
	
	
	
}); 
		 */



var idArrayCmt1 = null;
$(document).ready(function(){
	
var cmobile =0;
var cemail =0;
var csname =0;
var cname =0;
var cpassword =0;
var userName="";

var validation = true;
	idArrayCmt1 = $.makeArray($('.validate1').map(function() {
		return this.id ;
	}));
	
	
	
	
	$('#submitModel').click(function(event) {
		var x= $("#firstName").val();

		$.each(idArrayCmt1, function(i, val) {
			var value = $("#" + idArrayCmt1[i]).val();
			var errorCls = $("#" + idArray[i]).hasClass('errorCls');
			var placeholder = $("#" + idArrayCmt1[i]).attr('placeholder');
			if (value == null || value == "" || value == "undefined" || errorCls) {
				$('style').append(styleBlock);
				$("#" + idArrayCmt1[i] ).attr("placeholder", placeholder);
				$("#" + idArrayCmt1[i] ).css('border-color','#e73d4a');
				$("#" + idArrayCmt1[i] ).css('color','#e73d4a');
				$("#" + idArrayCmt1[i] ).addClass('placeholder-style your-class');
				 var id11 = $("#" + idArrayCmt1[i]+"_chosen").length;
				if ($("#" + idArrayCmt1[i]+"_chosen").length)
				{
					$("#" + idArrayCmt1[i]+"_chosen").children('a').css('border-color','#e73d4a');
				}
//				$("#" + idArray[i] + "Error").text("Please " + placeholder);
				validation = false;
				 event.preventDefault(); 
			} else{
				validation = true;
			} 
		});
		
		
		validation =subValidation;
	// retype password validation
	
	 var cpassword1 =$('#password').val();
	 
	var crtpassword1=$('#rePassword').val();
	
	if(cpassword1 != "" && crtpassword1 != "" && cpassword1==crtpassword1){
		validation = true;
	}else{
		if(cpassword1 != "" && crtpassword1 != ""){
		alert(" password and reenter password missmatch")
		}
		validation = false;
	} 
	
	
	if(validation && mobilevalidation) {
		$("#submit1").attr("disabled",true);
		$("#submit1").val("Please wait...");
		$("#submit1").submit();											
		getOTP();
	}else {
		return false;
		 event.preventDefault(); 
	}
	
}); 
	
	
	$(".cancel1").click(function()
			{
				$("#id").val(0);
				$.each( idArrayCmt1, function(i, val)
				{
					var value = $("#"+idArrayCmt1[i]).val();
					if ($("#"+idArrayCmt1[i]+"_chosen").length)
					{
						$("#" + idArrayCmt1[i]).val("");
						$("#" + idArrayCmt1[i]).trigger("chosen:updated");
					}
//					$("form")[0].reset();
					$("#"+ idArrayCmt1[i]).val('');
					$("#"+ idArrayCmt1[i]).prop('readonly',false);
					$("#"+ idArrayCmt1[i]).css('border-color','');
					$("#"+ idArrayCmt1[i]).css('color','black');
					$("#"+ idArrayCmt1[i]).removeClass('placeholder-style your-class default-class');
					if ($("#" +  idArrayCmt1[i]+"_chosen").length)
					{
						$("#" +  idArrayCmt1[i]+"_chosen").children('a').css('border-color','black');
					}
				});
			});
	
	
	
	$('#cemail').blur(function() {
		
		var editFields =0;
		var cemail=$(this).val();
		
		var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		  if( regex.test(cemail))
			  {
			  subValidation =true;
		
		
		$.ajax({
					type : "POST",
					url : "checkEmailExst",
					data :"cemail="+cemail+"&editFields="+editFields,
					dataType : "text",
					beforeSend : function() {
			             $.blockUI({ message: 'Please wait' });
			          }, 
					success : function(data) {
						if(data ==='true')
							{
							alert("Email already exists")
		 					$('#cemail').css('border-color', 'red');
		 					 $('#submitModel').prop('disabled', true);
							}
						else
							{
							$('#cemail').css('border-color', 'none');
							 $('#submitModel').prop('disabled', false);
							}
						
					},
					complete: function () {
			            
			            $.unblockUI();
			       },
					error :  function(e){$.unblockUI();console.log(e);}
					
				});
			  }
		  else
			  
		{
			  $('#cemail').css('border-color', 'red');
			  subValidation =false;
			  
		}
			}); 
	
	$('#cmobile').blur(function() {
		var editFields =0;
		var cmobile=$(this).val();
		
		if (cmobile == null || cmobile == "" || cmobile == "undefined") {
			
			return false;
		}
		else
		{ 
		}
		var cmobile=$(this).val();
		$('span.error-keyup-4').remove();
	    var inputVal = $(this).val();
	         
	    	
	    var characterReg = /^[6789]\d{9}$/;
	    if(!characterReg.test(inputVal)) {
	        $(this).after('<span class="error error-keyup-4">Not a valid Mobile Number </span>');
	        
	        $('.mobilenumber' ).css('border-color','#e73d4a');
			$('.mobilenumber' ).css('color','#e73d4a');
			
			$('.mobilenumber' ).addClass("errorCls");
	        //setTimeout(function() { $("#error-keyup-4").text(''); }, 3000);
	        
	        return false;
	    }else{
	    	 
	    	
		
		  if(cmobile.length != 10 )
			 {
			 alert("Mobile Number Length Must Be 10 Digits")
			 $('#cmobile').css('border-color', 'red');
			// $('#submitModel').prop('disabled', true);
			 
			 subValidation =false;
			 
			 }
		  
		
		  
		
		
		$.ajax({
					type : "POST",
					url : "checkCustExst",
					data :"cmobile="+cmobile+"&editFields="+editFields,
					dataType : "text",
					beforeSend : function() {
			             $.blockUI({ message: 'Please wait' });
			          }, 
					success : function(data) {
						if(data ==='true')
							{
							alert("Mobile Number already exists")
		 					$('#cmobile').css('border-color', 'red');
		 					 $('#submitModel').prop('disabled', true);
		 					 //alert("customer could not be registered")
		 					 mobilevalidation=false;
		 					subValidation =false;
							}
						 else
							{
							$('#cmobile').css('border-color', 'none');
							 $('#submitModel').prop('disabled', false);
							 subValidation =true;
							 mobilevalidation=true;
							} 
						
					},
					complete: function () {
			            
			            $.unblockUI();
			       },
					error :  function(e){$.unblockUI();console.log(e);}
					
				});
		  
		  
	    }
		
			}); 
			
	
});	

function validation12(){
	
	
	
	
}
	function openRegistrationModel()
	{
		//$(".cancel1").click();
		//makeEmptyRegistration();
		$("#register_info").modal('toggle');
		
	}
	
	/* function makeEmptyRegistration()
	{
		$('#csname').val("");
		$('#cname').val("");
		$('#cmobile').val("");
		$('#cemail').val("");
		$('#csname').val("");
		$('#cpassword').val("");
		$('#crtpassword').val("");
		
		$('#cemail').css('border-color', 'none');
	} */
	 function getOTP()
	{
		
		 cmobile =$('#mobileNumber').val();
		cemail =$('#email').val();
		 csname =$('#lastName').val();
		 cname =$('#firstName').val();
		 
		
		
	//alert(cmobile+""+cemail+""+csname+""+cname);
	 
	 
		
	 $.ajax({
		type : "POST",
		url : "getOtp",
		data :"cmobile="+cmobile,
		dataType : "text",
		beforeSend : function() {
             $.blockUI({ message: 'Please wait' });
          }, 
		success : function(data) {
			if(data ==='true')
				{
				//location.reload();
				alert("OTP Send to Your Mobile Number ");
				$('#register-info').modal('hide');
				//$("#register-info").modal('toggle');
				$('#OTPModel').modal('toggle');
				$("#OTPModel").modal('show');
				}
			else
				{
				$('#cmobile').css('border-color', 'none');
				$('#submit1').prop('disabled', false);
				}
			
		},
		complete: function () {
            
            $.unblockUI();
       },
		error :  function(e){$.unblockUI();console.log(e);}
		
	});
	
	
}
	function otpModelsubmit()
	{
		 cmobile =$('#mobileNumber').val();
		 cemail =$('#email').val();
		 csname =$('#lastName').val();
		 cname =$('#firstName').val();
		 userName =$('#userName').val();
		 cotp=$('#cotp').val();
		 cpassword =$('#password').val();
		
	//alert(cmobile+""+cemail+""+csname+""+cname);
	//alert(cotp+""+cpassword);
	
		
		$.ajax({
			type : "POST",
			url : "modelSubmit",
			data :"cmobile="+cmobile+"&cemail="+cemail+"&csname="+csname+"&cname="+cname+"&cotp="+cotp+"&cpassword="+cpassword+"&userName="+userName,
			dataType : "text",
			beforeSend : function() {
	             $.blockUI({ message: 'Please wait' });
	          }, 
			success : function(data) {
				//alert(data);
				
				if(data ==='true')
				{
					alert(" Registration Completed Successfully ");
					$('#OTPModel').modal('toggle');					
				}
				else
					alert("Enter valid OTP")
				
			},
			complete: function () {
	            
	            $.unblockUI();
	       },
			error :  function(e){$.unblockUI();console.log(e);}
			
		});
	}
	
	
	function resetpassword()
	{
		
		var resetmobile =$("#resetmobile").val();
		
		if(resetmobile == "" ||resetmobile == "undefined" ||resetmobile ==" null")
			{
			  return false;
			}
		
		$('#resetpassword').prop('disabled', true);
	 idArrayCmt11 = $.makeArray($('.validate2').map(function() {
		return this.id;
		}));
	validation = true;
	$.each(idArrayCmt11, function(i, val) {
		var value = $("#" + idArrayCmt11[i]).val();
		var placeholder = $("#" + idArrayCmt11[i]).attr('placeholder');
		if (value == null || value == "" || value == "undefined") {
			$('style').append(styleBlock);
			$("#" + idArrayCmt11[i] ).attr("placeholder", placeholder);
			$("#" + idArrayCmt11[i] ).css('border-color','#e73d4a');
			$("#" + idArrayCmt11[i] ).css('color','#e73d4a');
			$("#" + idArrayCmt11[i] ).addClass('placeholder-style your-class');
			 var id11 = $("#" + idArrayCmt11[i]+"_chosen").length;
			if ($("#" + idArrayCmt11[i]+"_chosen").length)
			{
				$("#" + idArrayCmt11[i]+"_chosen").children('a').css('border-color','#e73d4a');
			}
//			$("#" + idArray[i] + "Error").text("Please " + placeholder);
			validation = false;
		} 
	});
	if(validation) {
		
	}else {
		return false;
	}
				var mobileno=$('#resetmobile').val();
		    	
			   
			   var formData = new FormData();
			   
			   
			   formData.append('resetmobile',mobileno);
	    	console.log(formData);
	 		$.ajax({
				type:"POST",
			  	url: "getresetcustomerpassword", 
			  	data:formData,
			  	processData: false,  // tell jQuery not to process the data
				contentType: false,  // tell jQuery not to set contentType
			  	
			  	success: function(result){
			  		//alert(result);
			  		if(result==true)
			  		{
			  			alert("Your Password sent to registered email and mobile number ");	
			  			$('#passwordModel').modal('toggle');
			  			 window.location.reload();
			  		}	
			  		else
			  			{
			  				alert("Enter registered mobile number");
			  				$('#resetpassword').prop('disabled', false);
			  				
			  			}
			  		
			  		
			  		 
			  	
			    },
			    error: function (e) {
		            console.log(e.responseText);
		        }
					    
			});
		
	}
	function makeEmptyRegistration()
	{
		$('#csname').val("");
		$('#cname').val("");
		$('#cmobile').val("");
		$('#cemail').val("");
		$('#csname').val("");
		$('#cpassword').val("");
		$('#crtpassword').val("");
		
		$('#cemail').css('border-color', 'none');
	}
	
	
	
	
	
	
	$('#csubmit').click(function() {
		var musername =	$('#cmusername').val();
		var mpass =	$('#cmpassword').val();
		if (musername == null || musername == "" || musername == "undefined") {
			alert("Please Enter Mobile Number")
		return false;
		}
		if (mpass == null || mpass == "" || mpass == "undefined") {
			alert("Please Enter password")
		return false;
		}
			
		});
	$(".acc").addClass("active");
	
	
	/* $('#cpassword').blur(function() {
		ccpassword =$('#cpassword').val();
		//alert(ccpassword);
		var  passwordPolicy= /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@#$!%*?&.])[A-Za-z\d$@#$!%*?&.]{6,15}$/;
		alert(passwordPolicy.test(ccpassword));
		if (passwordPolicy.test(ccpassword)) 
		{
            alert('Valid password');
            $('#submitModel').prop('disabled', false);
        }
		else
			{
			alert("Password should contain minimum 6 and maximum 15 characters, at least one uppercase letter, one lowercase letter, one number and one special character");	
			$('#cpassword').css('border-color', 'red');
			$('#submitModel').prop('disabled', true);
			}  
			
		
	});  */
	
	/* function makeEmptyOtp()
	{
		$('#cotp').val("");
		/* $('#csname').val("");
		$('#cname').val("");
		$('#cmobile').val("");
		$('#cemail').val("");
		$('#csname').val("");
		$('#cpassword').val("");
		$('#crtpassword').val("");
		
		$('#cemail').css('border-color', 'none'); 
	}
	
	
	function resendOTP()
	{
		var cmobile =$('#cmobile').val();	
		$.ajax({
			type : "POST",
			url : "resendOtp",
			data :"cmobile="+cmobile,
			dataType : "text",
			beforeSend : function() {
	             $.blockUI({ message: 'Please wait' });
	          }, 
			success : function(data) {
				if(data ==='true')
					{
					alert("OTP sent to your mobile number");
					}
				else
					{
					alert("OTP Limit Expired For Today");
					} 
				
			},
			complete: function () {
	            
	            $.unblockUI();
	       },
			error :  function(e){$.unblockUI();console.log(e);}
			
		});
	}
	 */
	