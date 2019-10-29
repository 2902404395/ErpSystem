<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="statics/css/page.css">
		<script type="text/javascript" src="statics/js/homepage.js"></script>
		<script type="text/javascript" src="statics/js/backgr.js"></script>
		<script type="text/javascript" src="statics/js/jquery-1.12.4.js"></script>
	 </head>

	<body>
		<div class="our">
			<div class="head">
				<div id="Head">
					<div class="tu1">
						<a href="welcome.jsp" target="mainInfo">
							<img src="statics/img/66101.jpg" />
							<p>回到首页</p>
						</a>
					</div>
					<div class="tu1">
						<a href="center.jsp" target="mainInfo">
							<img src="statics/img/product.png" />
							<p>产品中心</p>
						</a>
					</div>
					
					<div class="tu1">
						<a href="#">
							<img src="statics/img/manage.png" />
							<p>管理中心</p>
						</a>
					</div>
					<div class="tu1">
						<a href="#">
							<img src="statics/img/set.png" />
							<p>产品BOM</p>
						</a>
					</div>
					<div class="tu1">
						<a href="javascript:void(0)" onclick="showMyName()">
							<img src="statics/img/me.png" />
							<p>个人中心</p>
						</a>

					</div>
				</div>
			</div>
			<div id="queer">
				<div class="edit">
					<a href="#" onclick="showProduction_order()">
						<img src="statics/img/finance.png" />
						<p>生产订单中心</p>
					</a>
				</div>
				<div class="edit">
					<a href="javascript:void(0)" onclick="showPurchaseorder()">
						<img src="statics/img/indent.png" />
						<p>采购订单中心</p>
					</a>
				</div>
				
				<div class="edit">
					<a href="javascript:void(0)" onclick="showWarehouse()">
						<img src="statics/img/out.png" />
						<p>仓库数据中心</p>
					</a>
				</div>
			</div>
		</div>
		<iframe id="iframe" name="mainInfo" width="84%" height="100%"></iframe>

	</body>
</html>