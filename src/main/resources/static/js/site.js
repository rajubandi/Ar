function displayTable(listOrders) {
	$('#tableDiv').html('');
	var tableHead = '<table class="table card-table table-vcenter text-nowrap table-primary" id="dataTableId" >'
			+ '<thead  class="bg-primary text-white">'
			+'<tr >'
			+'<th class="text-white">Listing ID</th>'
			+'<th class="text-white">Village</th>'
			+'<th class="text-white">Colony</th>'
			+'<th class="text-white">Sq Yd</th>'
			+'<th class="text-white">Property Type</th>'
			+'<th class="text-white">Options</th>'
			+'</tr>'
			+'</thead><tbody></tbody></table>';
	$('#tableDiv').html(tableHead);
	serviceUnitArray = {};
	$.each(listOrders,function(i, orderObj) {
		if(orderObj.status == "1"){
			var deleterow = "<a class='deactivate' onclick='deleteEmployee("+ orderObj.id+ ",0)'><i class='fa fa-eye'></i></a>";
			var cls="activecss";
		}else{  
			var deleterow = "<a class='activate' onclick='deleteEmployee("+ orderObj.id+ ",1)'><i class='fa fa-eye-slash'></i></a>";
			var cls="inactivecss";
		}
		var edit = "<a class='edit editIt' onclick='editEmployee("	+ orderObj.id+ ")'><i class='fa fa-edit'></i></a>"
		serviceUnitArray[orderObj.id] = orderObj;
		var tblRow = "<tr class='"+ cls +"'>"
			/* + "<td title='"+orderObj.id+"'>"+ orderObj.id + "</td>" */
			+ "<td scope='row' title='"+orderObj.listingId+"'>"+ orderObj.listingId + "</td>"
			+ "<td title='"+orderObj.username+"'>"+ orderObj.listingId + "</td>"
			+ "<td title='"+orderObj.reportto+"'>"+ orderObj.colony + "</td>"
			+ "<td title='"+orderObj.firstname+"'>"+ orderObj.sqYd + "</td>"
			+ "<td title='"+orderObj.lastname+"'>"+ orderObj.propertyType + "</td>"
			+ "<td style='text-align: center;white-space: nowrap;'>" + edit + "&nbsp;&nbsp;" + deleterow + "</td>" 
//			+ "<td ><a style='cursor:pointer' onclick='getPasswordModal("+ orderObj.id +")'>Change Password</a></td>" 
			+ "</tr>";
		$(tblRow).appendTo("#dataTableId table tbody");
	});
}