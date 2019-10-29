<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%--  <base href="<%=basePath%>"> --%>
    <title>ERP管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="static/css/warehouse.css">
	<link rel="stylesheet" type="text/css" href="static/css/PurchaseOrderCss.css">
  </head>
  <body>
  <script src="static//js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
    <div class="body_div1">
		<a href="javascript:void(0)" onclick="getList('finished')">成品仓</a>
		<a href="javascript:void(0)" onclick="getList('unfinished')">半成品仓</a>
		<a href="javascript:void(0)" onclick="getList('rawmaterial')">原料</a>
	</div>
	<div class="body_div2">
		<a href="javascript:void(0)" onclick="">采购订单入库</a>
		<a href="javascript:void(0)" onclick="">生产订单入库</a>
	</div>
	<hr>	
	<div id="body_div3">
		
	</div>
	<!-- 采购订单入库-->
	<div id="body_div4">
	
	</div>
	<!--生产订单入库-->
	<div id="body_div5">
	
	</div>
	<script type="text/javascript">
			<%-- var path="<%=request.getContextPath()%>"; --%>
		</script>
		<script type="text/javascript" src="static//js/index.js"></script>
  </body>
</html>
