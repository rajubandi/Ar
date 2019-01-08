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
		var edit = "<a class='edit editIt' onclick='editEmployee("	+ orderObj[0].id+ ")'><i class='fa fa-edit'></i></a>"
		serviceUnitArray[orderObj.id] = orderObj;
		var tblRow = "<tr >"
			/* + "<td title='"+orderObj.id+"'>"+ orderObj.id + "</td>" */
			+ "<td title='"+orderObj[1].vName+"'>"+ orderObj[1].vName + "</td>"
			+ "<td title='"+orderObj.pinCode+"'>"+ orderObj[0].propertyType + "</td>"
			+ "<td title='"+orderObj.pinCode+"'>"+ orderObj[0].minAmount + "</td>"
			+ "<td title='"+orderObj.pinCode+"'>"+ orderObj[0].maxAmount + "</td>"
			+ "<td title='"+orderObj.pinCode+"'>"+ orderObj[0].priceTrendTime + "</td>"
			+ "<td style='white-space: nowrap;'>" + edit +"</td>" 
			+ "</tr>";
		$(tblRow).appendTo("#tableId tbody");
	});
}
$(function() {
	
	 $('.fc-datepicker').datepicker({
		 showOtherMonths: true,
		 selectOtherMonths: true
	   });
	
	 $('#priceTrendTime').datepicker({
		 showOtherMonths: true,
		 selectOtherMonths: true,
		 numberOfMonths: 2
	   });
	
	
});
