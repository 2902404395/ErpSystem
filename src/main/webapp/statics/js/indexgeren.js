var html;
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
		"<table border='1' width='100%' cellspacing='0' cellpadding='10'>" +
				"<tr>" +
					"<th>编号</th>" +
					"<th>编码</th>" +
					"<th>名称</th>" +
					"<th>规格</th>" +
					"<th>数量</th>" +
					"<th>备注</th>" +
				"</tr>";
		$.each(data,function(index){
			listHtml+="<tr>" +
							"<td>"+this.fno+"</td>" +
							"<td>"+this.fid+"</td>" +
							"<td>"+this.fname+"</td>" +
							"<td>"+this.fspecification+"</td>" +
							"<td>"+this.famount+"</td>" +
							"<td>"+this.remarks+"</td>" +
						"</tr>";
		});
		listHtml+="</table>";
		html+=listHtml;
		$("#body_div3").append(listHtml);
	}else{
		alert("数据为空！");
	}
}
