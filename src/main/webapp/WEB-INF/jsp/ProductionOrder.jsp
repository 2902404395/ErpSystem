<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>生产订单表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="statics/css/ProductionOrder.css">
	<script type="text/javascript" src="statics/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="statics/js/ProductionOrder.js"></script>
  </head>
	  <body>
	    <div>
	      	<ul id= "imgul">
	      		<li>
	      			<a href="javascript:void(0)" id="add" >
	      			<img src="statics/images/insert.png" width="30px" height="30px"><br />
	      			增加</a>
	      		</li>
	      		<li>
      				<a href="javascript:void(0)" id="select">
      				<img src="statics/images/select.png" width="35px" height="30px"><br />
      				查询</a>
	      		</li>
	      	</ul>
      	</div>
         	 <div id="inserttable">
         	 	 <form action="Javascript:void(0)" >
         	 		<ul  style="height: 320px">
         	 			<li>
         	 				<h2>添加订单</h2>
      	 					生产名称：<input type="text" name="pname" id="pname"  autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="pnameerror"></span>
      	 					<br/><br/>
      	 					订单数量：<input type="number" name="pnum" id="pnum" placeholder="只能填写数字" autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="pnumerror"></span >
      	 					<br/><br/>
      	 					备注：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea cols="20" rows="2" id="textarea" name="textarea" style="resize: none;"></textarea>
      	 					
      	 				</li>
      	 				<br/>
      	 				<br/>
       	 				<li>
       	 					<input type="submit" name="get" id="get"  value="添  加"/>
       	 					<input type="reset" name="rese" id="reset" value="退  出"/>
       	 					<img src="statics/images/login.png" width="200px" height="200px" style="position: absolute; top: -5px;left:400px;"/>
       	 				</li> 
        	 		</ul>
         	 	</form>
         	 </div>
         	 
         	 <div id="selectable">
         	 <form action="Javascript:void(0)" id="myform">
         	 	<ul>
         	 		<li>
         	 			按生产订单查询:
         	 			<input type="text" id="lorderid" name="lorderid" autocomplete="off" />
         	 			<br><br>
         	 			按生产名称查询:
         	 			<input type="text" id="lordername" name="lordername" autocomplete="off"/>
         	 		    <input type="submit" id="plname" onclick="clickpid()" value="提 交"/>
         	 			<input type="submit" value="X" id="reset1"/>         	 			
         	 		</li>
         	 	</ul>
         	 	</form>
         	 </div>
         	<br /><br />
         		<div id="selectinfo">
         		</div>
         	<!--修改 -->
         <div id="updatetable">
         	 	 <form action="Javascript:void(0)" id="updateform" >
         	 		<ul style="height: 320px">
         	 			<li>
         	 				<h2>修改订单</h2>
         	 				<input type="hidden" name="upid" id="upid">
      	 					生产名称：<input type="text" name="upname" id="upname"  autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="upnameerror"></span>
      	 					<br/><br/>
      	 					订单数量：<input type="number" name="upnum" id="upnum" autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="upnumerror"></span >
      	 					<br/><br/>
      	 					备注：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea cols="20" rows="2" id="uptextarea" name="uptextarea" style="resize: none;"></textarea>
      	 					
      	 				</li>
      	 				<br/>
      	 				<br/>
       	 				<li>
       	 					<input type="submit" name="upget" id="upget" onclick=" ()" value="修  改"/>
       	 					<input type="reset" name="uprese" id="upreset" value="退  出"/>
       	 					<img src="statics/images/login.png" width="200px" height="200px" style="position: absolute; top: -5px;left:400px;"/>
       	 				</li> 
        	 		</ul>
         	 	</form>
         	 </div>
         <script type="text/javascript">
         /* 提交验证*/
    	$(document).ready(function(){
    		$("#pname").blur(checkname);//采购名称
    		$("#pnum").blur(checknum);//订单数量
    	});
    	//点击提交
    	$("#get").click(function(){
    		if(!checkname()){//采购名称
    			return
    		}
    		if(!checknum()){//订单数量
    			return
    		}
    		clickadd();
    	});
    	//生产名称
    	function checkname(){
    		$("#pnameerror").html("");
    		if($("#pname").val() ==""){
    			$("#pnameerror").html("请填写生产名！");
    			return false;
    		}
    		return true;
    	}
    	//订单数量
    	function checknum(){
    		$("#pnumerror").html("");
    		if($("#pnum").val() ==""){
    			$("#pnumerror").html("请填写订单数量！");
    			return false;
    		}
    		return true;
    	}
    	$(document).ready(function(){
    		$("#reset").click(function(){
	    		$("#pordererror").html("");
	    		$("#pnameerror").html("");
    			$("#pnumerror").html("");
    		});
    	});
    		//点击新增显示
    		$("#add").click(function(){
    			$("#inserttable").fadeIn();
    		});
    		//关闭
    		$("#reset").click(function(){
    			$("#inserttable").fadeOut();
    		});
    		//查询
    		$("#select").click(function(){
    			$("#selectable").fadeIn();
    		});
    		//关闭查询
    		$("#reset1").click(function(){
    			$("#selectable").fadeOut();
    			$("#lorderid").val("");
    			$("#lordername").val("");
    		});
    		//
    		$("#upreset").click(function(){
    			$("#updatetable").fadeOut();
    		});
         </script>
  </body>
</html>
