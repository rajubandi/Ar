function displayTable(listOrders) {
	
	serviceUnitArray = {};
	$("#tableIdCommercial tbody tr").remove();
	$("#tableIdResidential tbody tr").remove();
	$.each(listOrders,function(i, orderObj) {
		/*if(orderObj.status == "1"){
			var deleterow = "<a class='deactivate' onclick='deleteEmployee("+ orderObj[0].id+ ",0)'><i class='fa fa-eye'></i></a>";
			var cls="activecss";
		}else{  
			var deleterow = "<a class='activate' onclick='deleteEmployee("+ orderObj[0].id+ ",1)'><i class='fa fa-eye-slash'></i></a>";
			var cls="inactivecss";
		}*/
		var edit = "<a class='edit editIt' onclick='editPriceTrends("	+ orderObj[0].id+ ")'><i class='fa fa-edit'></i></a>"
		
		var d1 = new Date(orderObj[0].priceTrendTime);
		var MM = d1.toLocaleString('en-us', { month: 'long' });;
		var YYYY = d1.getFullYear();
		
		var formatDate = MM+","+YYYY ;
		serviceUnitArray[orderObj.id] = orderObj;
			var tblRow = "<tr >"
				/* + "<td title='"+orderObj.id+"'>"+ orderObj.id + "</td>" */
				+ "<td title='"+orderObj[1].vName+"'>"+ orderObj[1].vName + "</td>"
				//+ "<td title='"+orderObj.pinCode+"'>"+ orderObj[0].propertyType + "</td>"
				+ "<td title='"+orderObj.pinCode+"'><i class='fa fa-rupee'></i>"+ orderObj[0].minAmount + "</td>"
				+ "<td title='"+orderObj.pinCode+"'><i class='fa fa-rupee'></i>"+ orderObj[0].maxAmount + "</td>"
				+ "<td title='"+orderObj.pinCode+"'>"+formatDate + "</td>"
				//+ "<td style='white-space: nowrap;'>" + edit +"</td>" 
				+ "</tr>";
			if(orderObj[0].propertyType == "Commercial"){
				$(tblRow).appendTo("#tableIdCommercial tbody");
				//$('#tableIdCommercial').DataTable();
			}else{
				
				$(tblRow).appendTo("#tableIdResidential tbody");
				//$('#tableIdResidential').DataTable();
				
			}
	});
	
	var tbodyCommercial = $("#tableIdCommercial tbody");

	if (tbodyCommercial.children().length == 0) {
		
		tbodyCommercial.html("<tr id='emptyCommercial'><td colspan='4'>No data found in commercial</td></tr>");
	}else{
		
		$('#emptyCommercial').remove();
	}
	
	var tbodyResidential = $("#tableIdResidential tbody");

	if (tbodyResidential.children().length == 0) {
		
		tbodyResidential.html("<tr id='emptyResidential'><td colspan='4'>No data found in residential</tr>");
	}else{
		
		$('#emptyResidential').remove();
	}
	
}


function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = $("#searchVillageNames").val();
    filter = input;
    ul = $("#villageList");
    li = $('#villageList li').length;
    /* var t = "abc123";
    var x = t.match(/[a-z]+|\d+/ig); */
    
    $('#villageList li').each(function(){
    	
    a =	$(this.children[1].innerText).selector;
    
    if (a.indexOf(filter) > -1) {
    	
    	$(this).show();
    } else {
    	$(this).hide();
    } 
    	
    });
    /* for (i = 0; i < li.length; i++) {
        //a = li[i].text();
       var z =ul[0].children[i];
       console.log(ul[0].children[i]);
      a=  ul[0].children[i].textContent().match(/[a-z]+|\d+/ig)
        txtValue = a.textContent || a.innerText;
        if (a.indexOf(filter) > -1) {
        	ul.children[i].hide();
        } else {
        	ul.children[i].show();
        } 
    } */
}

function priceTrendsFiterByVillage(values,months){
	   
	   
	   $.ajax({
			type : "POST",
			async: false,
			url : "priceTrendsFilterByVillage",
			data : {villageArry:values,monthsArry:months},
			dataType : "json",
			success : function(response) {
				
				
				displayTable(response);
				/*$('#tableIdCommercial,#tableIdResidential ').dataTable({
				    "oLanguage": {
				        "sEmptyTable": " Empty Table"
				    }
				});*/
				/*$('#tableIdCommercial').DataTable();
				$('#tableIdResidential').DataTable();*/
				}
			});
	   
}
