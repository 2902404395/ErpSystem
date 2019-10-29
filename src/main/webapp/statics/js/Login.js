$(document).ready(function(){
	$("#username").blur(checkname);//用户名
	$("#password").blur(checkpwd);//密码
	
	//点击提交按钮
	$("#loginsub").click(function(){
		var flg =true;
		if(!checkname()){
			flg =false;
		}
		if(!checkpwd()){
			flg =false;
		}
		return flg;
	});
});
//用户名
function checkname(){
	var uname = $("#username").val();
	//当输入错误格式
	var nameerror = $("#usernameerror");
	//用户名正则表达式
	nameerror.html("");
	var regCode =/^[A-Za-z0-9]{4,10}$/;
	if(uname==""){
		nameerror.html("登录名不能为空！");
		return false;
	}else if(regCode.test(uname) ==false){
		nameerror.html("由英文字母和数字组成4-10位！");
		return false;
	}
	return true;
}
//密码
function checkpwd(){
	var upwd = $("#password").val();
	//当输入错误格式
	var pwderror = $("#pwderror");
	//密码正则表达式
	pwderror.html("");
	var regPwd =/^[A-Za-z0-9]{4,6}$/;
	if(upwd==""){
		pwderror.html("密码框不能为空！");
		
		return false;
	}else if(regPwd.test(upwd) == false){
		pwderror.html("由英文字母和数字组成4-6位字符!");
		return false;
	}
	return true;
}
$(document).ready(function(){
	$("#username").focus(function() {
		$("#loginname").css({"position":"absolute","top":"80px","font-size":"16px"});
		$("#divname").css("border","1px solid black");
	});
	$("#username").blur(function() {
		var uname = $("#username").val();
		if(uname==""){
			$("#loginname").css({"position":"absolute","top":"100px","font-size":"20px"});
		}
		else{
			$("#loginname").css({"position":"absolute","top":"80px","font-size":"16px"});
		}
		$("#divname").css("border","1px solid #cccccc");
	});
	$("#password").focus(function() {
		$("#loginpwd").css({"position":"absolute","top":"190px","font-size":"16px"});
		$("#divpwd").css("border","1px solid black");
	});
	$("#password").blur(function() {
		var upwd = $("#password").val();
		if(upwd ==""){
			$("#loginpwd").css({"position":"absolute","top":"210px","font-size":"20px"});
		}
		else{
			$("#loginpwd").css({"position":"absolute","top":"190px","font-size":"16px"});
		}
		$("#divpwd").css("border","1px solid #cccccc");
	});
});
function login() {
	var tr=$("#myform").find(":input").serialize();
	$.ajax({
		"url":path+"/UserServlet"
		,"type":"post"
		,"data":tr
		,"dataType":"json"
		,"success":function(data){
			if (data==1) {
				location.href=path+"/homepage.jsp";
			}else if(data==0){
				alert("未找到此用户！");
			}else{
				alert("操作异常！请联系管理员");
			}
		}
		,"error":function(){
			alert("数据异常");
		}
	});
}	
	
	
		
	
