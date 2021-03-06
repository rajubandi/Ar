function displayTable(listOrders) {
	//$('#tableId').html('');
	/*var tableHead = '<table id="example" class="table table-striped table-bordered datatables">'
			+ '<thead><tr><th>User Id</th><th>User Name</th><th>Report To</th><th>First Name</th><th>Last Name</th><th>Designation</th><th>Mobile Number</th><th>Branch name</th><th style="text-align: center;">Options</th><th></th></tr></thead><tbody></tbody></table>';*/
	//$('#tableId').html(tableHead);
	serviceUnitArray = {};
	$.each(listOrders,function(i, orderObj) {
		if(orderObj.status == "1"){
			var deleterow = "<a class='deactivate' onclick='deleteEmployee("+ orderObj.id+ ",0)'><i class='fa fa-eye'></i></a>";
			var cls="activecss";
		}else{  
			var deleterow = "<a class='activate' onclick='deleteEmployee("+ orderObj.id+ ",1)'><i class='fa fa-eye-slash'></i></a>";
			var cls="inactivecss";
		}
		var edit = "<a class='edit editIt' onclick='editVillage("	+ orderObj.id+ ")'><i class='fa fa-edit'></i></a>"
		serviceUnitArray[orderObj.id] = orderObj;
		var tblRow = "<tr class='"+ cls +"'>"
			/* + "<td title='"+orderObj.id+"'>"+ orderObj.id + "</td>" */
			+ "<td title='"+orderObj.vName+"'>"+ orderObj.vName + "</td>"
			+ "<td title='"+orderObj.pinCode+"'>"+ orderObj.pinCode + "</td>"
			+ "<td style='white-space: nowrap;'>" + edit +"</td>" 
			+ "</tr>";
		$(tblRow).appendTo("#tableId tbody");
		$('#tableId').dataTable();
	});
}

function editVillage(id){
	
    $("#id").val(id);
	
	$("#vName").val(serviceUnitArray[id].vName);
	$("#pinCode").val(serviceUnitArray[id].pinCode);
	$("#submit1").val("Update");
	$(window).scrollTop($('#moveTo').offset().top);
	
}