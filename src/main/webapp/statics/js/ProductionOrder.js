$(document).ready(function(){
	showinfo();
});
function showinfo() {
	$.ajax({
		"url":"/proOrder/getallshow"
		,"type":"POST"
		,"dataType":"json"
		,"success":ALLPRO
		,"error":function(){
			alert("服务异常，请联系管理员！");
		}
	});
}
function ALLPRO(data){
	$("#selectinfo").empty();
	var html = "<table border='1'  width='95%' cellspacing='0' cellpadding='10' id='table' >" +
					"<tr>" +
						"<th>生产序号</th>" +
						"<th>生产编号</th>" +
						"<th>生产名称</th>" +
						"<th>订单数量</th>" +
						"<th>备注</th>" +
						"<th>修改</th>" +
						"<th>删除</th>" +
				"</tr>" ;
	$.each(data,function(index){
		var classStyle;
		if(index % 2 ==0){
			classStyle ="class='odd'"
		}else{
			classStyle ="class='even'"
		}
		html +="<tr "+classStyle+">" +
					"<td class='pid'>"+this.pid+"</td>" +
					"<td>"+this.p_porder+"</td>" +
					"<td>"+this.p_pname+"</td>" +
					"<td>"+this.porder+"</td>" +
					"<td>"+this.remarks+"</td>" +
					"<td><a href='javascript:void(0)' onclick='updateclick(this)' class='update'>UPDATE</a></td>" +
					"<td><a href='javascript:void(0)' onclick='deleteclick(this)' class='delete'>DELETE</a></td>" +
				"</tr>";
	});
				html +="</table>";
				$("#selectinfo").append(html);
				
}
//点击按编号、名称查询
function clickpid(){
	$.ajax({
		"url":"/proOrder/ByProporderOrProname"
		,"data":{"lorderid":$("#lorderid").val(),
                "lordername":$("#lordername").val()}
		,"type":"post"
		,"dataType":"json"
		,"success":ALLPRO
		,"error":function(){
			alert("服务异常！");
		}
	});
}
//点击添加
function clickadd(){
	$.ajax({
		"url":"/proOrder/add"
		,"data":{"pname":$("#pname").val(),
				 "pnum":$("#pnum").val(),
				 "textarea":$("#textarea").val()}
		,"type":"post"
		,"dataType":"json"
		,"success":function(data){
			if(data){
				//显示全部
				showinfo();
				alert("添加数据成功！");
				$("#inserttable").fadeOut();
				$("#pname").val("")
				$("#pnum").val("")
				$("#textarea").val("")
			}else{
				alert("添加数据失败！");
			}
		}
		,"error":function(){
			alert("服务异常！");
		}
	});
}
//修改
function updateclick(aElm) {

	var $aElm = $(aElm);//当前的DOM对象装成Jquery
	var $tr = $aElm.parent().parent();
	var pid1 = $tr.find(".pid").html();
		$.ajax({
			"url":"/proOrder/selPro"
			,"data":{"pid":pid1}
			,"type":"post"
			,"dataType":"json"
			,"success":function(data){
				$("#upname").val(data[0].p_pname);
				$("#upnum").val(data[0].porder);
				$("#uptextarea").val(data[0].remarks);
				$("#updatetable").fadeIn();
			}
			,"error":function(){
				alert("服务异常！");
			}
		});
}
function clickupdate(){
	var updataString=$("#updateform").serialize();
	var yes = confirm("修改请点击确认！");
	if(yes ==true){
		$.ajax({
			"url" :"/proOrder/updatePro"
			,"data":updataString
			,"type" :"POST"
			,"dataType":"json"
			,"success" :function(data){
					alert(data);
					//显示全部
					showinfo();
					$("#updatetable").fadeOut();
			}
			,"error":function(){
				alert("服务异常，请联系管理员！");
			}
		});
	}
}
//删除
function deleteclick(aElm){
	var $aElm = $(aElm);//当前的DOM对象装成Jquery
	var $tr = $aElm.parent().parent();
	var delpid = $tr.find(".pid").html();
	var yes = confirm("删除请点击确认！");
	if(yes == true){
		$.ajax({
			"url":"/proOrder/deletePro"
			,"data":{"pid":delpid}
			,"type":"post"
			,"dataType":"json"
			,"success":function(data){
				if(data){
					//显示全部
					showinfo();
					alert("删除数据成功！");
				}else{
					alert("删除数据失败！");
				}
			}
			,"error":function(){
				alert("服务异常！");
			}
		});
	}
}

