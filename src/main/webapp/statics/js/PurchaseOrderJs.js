$(document).ready(function(){
	showinfo();
	$("#porder").blur(checkporder);//采购订单编号
	$("#pname").blur(checkname);//采购名称
	$("#pnum").blur(checknum);//采购数量
	$("#add").click(function(){
		$("#inserttable").fadeIn();
	});
	
	$("#reset").click(function(){
		$("#inserttable").fadeOut();
	});
	//修改退出
	$("#upreset").click(function(){
		$("#updatetable").fadeOut();
	});
	$("#update").click(function() {
		$("#get").val("修  改");
		$("#inserttable").fadeIn();
	});
	$("#select").click(function(){
		$("#selectable").fadeIn();
		$("#sorttable").fadeOut();
	});
	$("#reset1").click(function(){
		$("#selectable").fadeOut();
	});
	$("#sort").click(function(){
		$("#sorttable").fadeIn();
		$("#selectable").fadeOut();
	});
	$("#reset2").click(function(){
		$("#sorttable").fadeOut();
	});
	$("#sum").mouseenter(function(){
		$("#sum").val("数量排序(降序)");
		
	 });
	$("#sum").mouseleave(function(){
		$("#sum").val("CLICK ME");
	 });
	 $("#idorder").mouseenter(function(){
		$("#idorder").val("采购订单排序(降序)");
		
	 });
	 $("#idorder").mouseleave(function(){
		$("#idorder").val("CLICK ME TOO");
	 });
	
});
//点击提交
$("#get").click(function(){
	if(!checkporder()){//采购订单
		return;
	}
	if(!checkname()){//采购名称
		return;
	}
	
	if(!checknum()){//采购数量
		return;
	}
	insertPO();
});
//非空验证
function checkporder(){
	var pporder = $("#porder").val();
	var ppordererror = $("#pordererror");
	ppordererror.html("");
	if(pporder ==""){
		ppordererror.html("请填写订单号！");
		return false;
	}
	return true;
}
//采购名称
function checkname(){
	var ppname = $("#pname").val();
	var ppnameerror = $("#pnameerror");
	ppnameerror.html("");
	if(ppname ==""){
		ppnameerror.html("请填写采购名称！");
		return false;
	}
	return true;
}
//数量
function checknum(){
	var ppnum = $("#pnum").val();
	var ppnumeerror = $("#pnumerror");
	ppnumeerror.html("");
	if(ppnum ==""){
		ppnumeerror.html("请填写数量！");
		return false;
	}
	return true;
}
function showinfo(){
	$("#selectinfo").empty();
	$.ajax({
		"url" :path+"/PurchaseOrderServlet?option=showPO"
		,"type" :"POST"
		,"dataType":"json"
		,"success" :AllPO
		,"error":function(){
			alert("服务异常，请联系管理员！");
		}
	});
}
function AllPO(data) {
	var html="<table border='1' width='95%' cellspacing='0' cellpadding='10' id='tabledisplay'>" +
				"<tr class='coloryello'>" +
					"<th>采购编号</th>" +
					"<th>采购订单</th>" +
					"<th>采购名称</th>" +
					"<th>数量</th>" +
					"<th>备注</th>" +
					"<th>修改</th>" +
					"<th>删除</th>" +
				"</tr>";
	$.each(data,function(index){
		var classSytle;
		if (index%2==0) {
			classSytle="class='odd'";
		}else{
			classSytle="class='enev'";
		}
		html+="<tr "+classSytle+">" +
					"<td class='PoId'>"+this.pid+"</td>" +
					"<td>"+this.p_order+"</td>" +
					"<td>"+this.pname+"</td>" +
					"<td>"+this.pamount+"</td>" +
					"<td>"+this.remarks+"</td>" +
					"<td><a href='javascript:void(0)' id='update' onclick='update(this)'>更新</a></td>" +
					"<td><a href='javascript:void(0)' onclick='deletePoId(this)'>删除</a></td>" +
				"</tr>";
	});
		html+="</table>";
		$("#selectinfo").append(html);
} 
//修改前获取
function update(Pid){
	var $PoId=$(Pid).parent().parent().find(".PoId").html();
	$.ajax({
		"url" :path+"/PurchaseOrderServlet?option=updatePO"
		,"data":{"pid":$PoId}
		,"type" :"POST"
		,"dataType":"json"
		,"success" :function(data){
			$("#uppId").val(data[0].pid);
			$("#uppname").val(data[0].pname);
			$("#uppnum").val(data[0].pamount);
			$("#uptextarea").val(data[0].remarks);
			$("#updatetable").fadeIn();
		}
		,"error":function(){
			alert("服务异常，请联系管理员！");
		}
	});
}
//修改
function updateTo() {
	var updataString=$("#updatefrom").serialize();
	var result2=confirm("确定修改吗？");
	if (result2==true) {
		$.ajax({
			"url" :path+"/PurchaseOrderServlet?option=updataToPo"
			,"data":updataString
			,"type" :"POST"
			,"dataType":"text"
			,"success" :function(data){
				alert(data);
				$("#updatetable").fadeOut();
				showinfo();
			}
			,"error":function(){
				alert("服务异常，请联系管理员！");
			}
		});
	}
}
//删除
function deletePoId(PId) {
	var $PoId=$(PId).parent().parent().find(".PoId").html();
	var result=confirm("确定删除吗？");
	if (result==true) {
		$.ajax({
			"url" :path+"/PurchaseOrderServlet?option=deletePO"
			,"data":{"pid":$PoId}
			,"type" :"POST"
			,"dataType":"text"
			,"success" :function(data){
				alert(data);
				showinfo();
			}
			,"error":function(){
				alert("服务异常，请联系管理员！");
			}
		});
	}
}
 function insertPO() {
	 var insertString=$("#insertfrom").serialize();
	$.ajax({
		"url":path+"/PurchaseOrderServlet?option=insertTo"
		,"data":insertString
		,"type":"post"
		,"dataType":"text"
		,"success":insertToPO
		,"error":function(){
			alert("数据错误请联系管理员！");
		}
	});
}
 function insertToPO(data) {
	 alert(data);
	 showinfo();
}
 //查询功能
 function selectPO() {
	 $("#selectinfo").empty();
	var selectString=$("#selectform").serialize();//所有form标签的json对象
	$.ajax({
		"url":path+"/PurchaseOrderServlet?option=selectPAndN"
		,"data":selectString
		,"type":"post"
		,"dataType":"json"
		,"success":AllPO
		,"error":function(){
			alert("数据错误请联系管理员！");
		}
	});
}
