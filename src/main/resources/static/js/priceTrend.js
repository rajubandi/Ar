function displayTable(listOrders) {
	
	serviceUnitArray = {};
	$.each(listOrders,function(i, orderObj) {
		/*if(orderObj.status == "1"){
			var deleterow = "<a class='deactivate' onclick='deleteEmployee("+ orderObj[0].id+ ",0)'><i class='fa fa-eye'></i></a>";
			var cls="activecss";
		}else{  
			var deleterow = "<a class='activate' onclick='deleteEmployee("+ orderObj[0].id+ ",1)'><i class='fa fa-eye-slash'></i></a>";
			var cls="inactivecss";
		}*/
		var edit = "<a class='edit editIt' onclick='editPriceTrends("	+ orderObj[0].id+ ")'><i class='fa fa-edit'></i></a>"
		serviceUnitArray[orderObj.id] = orderObj;
			var tblRow = "<tr >"
				/* + "<td title='"+orderObj.id+"'>"+ orderObj.id + "</td>" */
				//+ "<td title='"+orderObj[1].vName+"'>"+ orderObj[1].vName + "</td>"
				//+ "<td title='"+orderObj.pinCode+"'>"+ orderObj[0].propertyType + "</td>"
				+ "<td title='"+orderObj.pinCode+"'><i class='fa fa-rupee'></i>"+ orderObj[0].minAmount + "</td>"
				+ "<td title='"+orderObj.pinCode+"'><i class='fa fa-rupee'></i>"+ orderObj[0].maxAmount + "</td>"
				//+ "<td title='"+orderObj.pinCode+"'>"+ orderObj[0].priceTrendTime + "</td>"
				//+ "<td style='white-space: nowrap;'>" + edit +"</td>" 
				+ "</tr>";
			if(orderObj[0].propertyType == "Commercial"){
				$(tblRow).appendTo("#tableIdCommercial tbody");
			}else{
				
				$(tblRow).appendTo("#tableIdResidential tbody");
				
			}
	});
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

