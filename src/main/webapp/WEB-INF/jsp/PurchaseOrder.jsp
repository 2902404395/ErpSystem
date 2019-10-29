<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%--  <base href="<%=basePath%>"> --%>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="statics/css/PurchaseOrderCss.css">
	<script type="text/javascript" src="statics/js/jquery-1.12.4.js"/>
	<script type="text/javascript" src="statics/js/PurchaseOrderJs.js"></script>
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
      			<li>
      				<a href="javascript:void(0)" id="sort">
      				<img src="statics/images/sort.jpg " width="35px" height="30px" /><br />
      				排序	</a>
      			</li>
      		</ul>
      	</div>
        
         	 <div>
         	 	 <form action="Javascript:void(0)" id="insertfrom">
         	 		<ul id="inserttable">
         	 				<li>
         	 					<h2>增加订单</h2>
         	 					</p>
         	 					<p>采购名称：<input type="text" name="pname" id="pname"  autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="pnameerror"></span>
         	 					</p>
         	 					<p>采购数量：<input type="number" name="pnum" id="pnum" autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="pnumerror"></span >
         	 					</p>
         	 					<p>备注：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea cols="22" rows="2" id="textarea" name="textarea" style="resize: none;"></textarea>
         	 					</p>
         	 				</li>
         	 				<li>
         	 					<input type="submit" name="get" id="get" value="添  加"/><td>
         	 					<input type="reset" name="rese" id="reset" value="退  出"/><td>
         	 					<img src="statics/images/login.png" width="200px" height="200px" style="position: absolute; top: -5px;left:400px;"/>
         	 				</li> 
         	 		</ul>
         	 	</form>
         	 </div>
         	 <div id="selectable">
         	 <form action="Javascript:void(0)" id="selectform">
         	 	<ul>
         	 		<li>
         	 			<p>
         	 				按采购订单查询:
         	 				<input type="text" name="lorderid" id="lorderid"/>
         	 				<br><br>
         	 				按采购名称查询:
         	 				<input type="text" name="lordername" id="lordername"/>
         	 				<input type="submit" id="plname" value="提 交" onclick="selectPO()"/>
         	 				<br>
         	 				<input type="submit" value="退 出" id="reset1"/>
         	 		
         	 		</li>
         	 	</ul>
         	 	</form>
         	 </div>
         	 <div id="sorttable">
         	 <form action="Javascript:void(0)">
         	 	<ul>
         	 		<li>
         	 			<p>	
         	 				<!--数量排序(降序)-->
         	 				<!--采购订单排序(降序)-->
          	 			<input type="submit" name="" id="sum" value="CLICK ME" />
          	 			<input type="submit" name="" id="idorder" value="CLICK ME TOO" />
         	 			</p>
         	 		</li>
         	 		<li>
         	 			<p>
         	 				<input type="submit" value="退 出" id="reset2"/>
         	 			</p>
         	 		</li>
         	 	</ul>
         	 	</form>
         	 </div>
         	<br /><br />
         	<div id="selectinfo"></div>
         	 <div>
         	 	 <form action="Javascript:void(0)" id="updatefrom">
         	 		<ul id="updatetable">
         	 				<li>
         	 					<h2>修改订单</h2>
         	 					<input type="hidden" name="uppId" id="uppId">
         	 					<p>采购名称：<input type="text" name="uppname" id="uppname"  autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="pnameerror"></span>
         	 					</p>
         	 					<p>采购数量：<input type="number" name="uppnum" id="uppnum" autocomplete="off" />&nbsp;&nbsp;&nbsp;&nbsp;<span id="pnumerror"></span >
         	 					</p>
         	 					<p>备注：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea cols="22" rows="2" id="uptextarea" name="uptextarea" style="resize: none;"></textarea>
         	 					</p>
         	 				</li>
         	 				<li>
         	 					<input type="submit" name="upget" id="upget" value="修  改" onclick="updateTo()"/><td>
         	 					<input type="reset" name="uprese" id="upreset" value="退  出"/><td>
         	 					<img src="statics/images/login.png" width="200px" height="200px" style="position: absolute; top: -5px;left:400px;"/>
         	 				</li> 
         	 		</ul>
         	 	</form>
         	 </div>

  </body>
</html>
