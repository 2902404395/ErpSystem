function getList(warehouse) {
	$.ajax({
		"url":path+"/WarehouseServlet"
		,"type":"post"
		,"data":{"warehouse":warehouse}
		,"dataType":"JSON"
		,"success":function(data){
			$("#body_div3").empty();//先清空原有盒子里的数据
			switch (warehouse) {
			case "finished":
				getFinished(data);
				break;
			case "unfinished":
				getUnfinished(data);
				break;
			case "rawmaterial":
				getRawmaterial(data);
				break;
			}
		}
		,"error":function(){
			alert("数据异常！");
		}	
	});
}
//获取成品仓数据
function getFinished(data) {
	if (data!=null) {
		var listHtml="<h2>成品仓数据</h2>" +
		"<table border='1' width='95%' cellspacing='0' cellpadding='10' id='showtable'>" +
				"<tr class='coloryello'>" +
					"<th>编号</th>" +
					"<th>编码</th>" +
					"<th>名称</th>" +
					"<th>规格</th>" +
					"<th>数量</th>" +
					"<th>备注</th>" +
				"</tr>";
		$.each(data,function(index){
			var colorSr=null;
			if (index%2==0) {
				colorSr="class='odd'";
			}else{
				colorSr="class='enev'";
			}
			listHtml+="<tr "+colorSr+">" +
							"<td>"+this.fno+"</td>" +
							"<td>"+this.fid+"</td>" +
							"<td>"+this.fname+"</td>" +
							"<td>"+this.fspecification+"</td>" +
							"<td>"+this.famount+"</td>" +
							"<td>"+this.remarks+"</td>" +
						"</tr>";
		});
		listHtml+="</table>";
		$("#body_div3").append(listHtml);
	}else{
		alert("数据为空！");
	}
}
//获取半成品仓数据
function getUnfinished(data) {
	if (data!=null) {
		var listHtml="<h2>半成品仓数据</h2>" +
		"<table border='1' width='95%' cellspacing='0' cellpadding='10' id='showtable'>" +
				"<tr class='coloryello'>" +
					"<th>编号</th>" +
					"<th>编码</th>" +
					"<th>名称</th>" +
					"<th>规格</th>" +
					"<th>数量</th>" +
					"<th>备注</th>" +
				"</tr>";
		$.each(data,function(index){
			var colorSr=null;
			if (index%2==0) {
				colorSr="class='odd'";
			}else{
				colorSr="class='enev'";
			}
			listHtml+="<tr "+colorSr+">" +
							"<td>"+this.uno+"</td>" +
							"<td>"+this.uid+"</td>" +
							"<td>"+this.uname+"</td>" +
							"<td>"+this.uspecification+"</td>" +
							"<td>"+this.uamount+"</td>" +
							"<td>"+this.remarks+"</td>" +
						"</tr>";
		});
		listHtml+="</table>";
		$("#body_div3").append(listHtml);
	}else{
		alert("数据为空！");
	}
}
//获取原料仓数据
function getRawmaterial(data) {
	if (data!=null) {
		var listHtml="<h2>原料仓数据</h2>" +
		"<table border='1' width='95%' cellspacing='0' cellpadding='10' id='showtable'>" +
				"<tr class='coloryello'>" +
					"<th>编号</th>" +
					"<th>编码</th>" +
					"<th>名称</th>" +
					"<th>规格</th>" +
					"<th>数量</th>" +
					"<th>备注</th>" +
				"</tr>";
		$.each(data,function(index){
			var colorSr=null;
			if (index%2==0) {
				colorSr="class='odd'";
			}else{
				colorSr="class='enev'";
			}
			listHtml+="<tr "+colorSr+">" +
							"<td>"+this.mno+"</td>" +
							"<td>"+this.mid+"</td>" +
							"<td>"+this.mname+"</td>" +
							"<td>"+this.mspecification+"</td>" +
							"<td>"+this.mamount+"</td>" +
							"<td>"+this.remarks+"</td>" +
						"</tr>";
		});
		listHtml+="</table>";
		$("#body_div3").append(listHtml);
	}else{
		alert("数据为空！");
	}
}