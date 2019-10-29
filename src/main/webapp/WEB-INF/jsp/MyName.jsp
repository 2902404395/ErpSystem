<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="static/css/Personage.css">

</head>

<body>
	<header>

	<ul>
		<li><img id="logo" src="img/wallhaven-r2qp7j.jpg" />
			<h1 id="zhongxin">个人中心</h1></li>
	</ul>
	</header>
	<div id="div2"style="background-image: url(static/img/wallhaven-r2qp7j.jpg);">
		<!--背景图-->
		<div id="div1"
			>
			<div id="div3">
				<div id="liebiao1">
					<ul id="liebiao2">
						<li style="background-color: black;color: white;">用户管理</li>
						<li class="geren">个人资料
							<div id="liebiao3">
								<h3>个人资料</h3>
								<ul id="ziliao">
									<li>用户名：admin</li>
									<li></li>
									<li>手机号码：135-****-3516</li>
									<li></li>
									<li>地址：广东省东莞市</li>
								</ul>
								
							</div></li>
						<li class="pwd">修改密码
							<div id="liebiao4">
								<h3>修改密码</h3>
								<div id="biaodan">
									<form action="" method="post">
										用户名：<input type="text" id="userName" class="inputs userWidth" />
										<div id="userNameId"></div>
										<br>
										<br> 密&nbsp;&nbsp;&nbsp;&nbsp;码： <input type="password"
											id="pwd" class="inputs" />
										<div id="pwdId"></div>
										<br>
										<br> 确认密码：<input type="password" id="repwd"
											class="inputs" />
										<div id="repwdId"></div>
										<br>
										<br> <input type="submit" value="保存修改" />
									</form>
								</div>


							</div></li>
						
						<li style="background-color: black;color: white;">订单管理</li>
						<li class="dingdan">我的订单
							<div id="liebiao7">
								<h3>我的订单</h3>
								<div class="boday_div1">
							<a href="#" name="warehouse" onclick="getList('finished')"></a>
								</div>
								<div id="body_div3">
		
								</div>
							</div></li>
						<li style="background-color: black;color: white;">其他</li>
						<li class="bangzhu">帮助与反馈
							<div id="liebiao8">
								<h3>帮助与反馈</h3>
								<div id="bangzhu2">
									第 1 步：检查互联网连接状况<br>
									<br> 确保您的设备已连接到数据网络或 Wi-Fi。<br> 第 2 步：清除缓存<br>
									<br> QQ浏览器可能存储了阻止浏览器完整加载该网页的信息。<br> 清除缓存和
									Cookie，然后尝试重新加载该网页。<br> 第 3 步：关闭其他标签页、扩展程序和应用<br>
									<br> 您的设备可能内存不足，无法在运行应用、扩展程序和其他程序的同时加载该网站。<br> 第 4
									步：重新启动设备<br>
									<br> 程序或应用有时会影响网页的正确加载。 1.重新启动计算机或移动设备。<br>
									2.尝试重新加载该网页。
								</div>
								还没有用？<a href="">点击此处</a>
							</div></li>
						<li class="guanyu">关于
							<div id="liebiao9">
								<h3>关于</h3>
								<div id="guanyu2">Copyright @ 2019 S1t144王云龙小组制作.</div>
							</div></li>
					</ul>


				</div>

			</div>

		</div>
	</div>
	<div id="tuijian">
		<h1>推荐</h1>
	</div>
	<bottom>
	<div id="dibu">

		<div class="boxgrid captionfull">
			<img src="static/img/800_800_1561434028202mp.png" />
			<div class="cover boxcaption">
				<h3>HUAWEI nova 5</h3>
				<p>
					8GB+128GB<br /> <a href="" target="_BLANK">全网通版（仲夏紫）</a> <a href=""
						target="_BLANK">价格：¥2799.00 </a>
				</p>
			</div>
		</div>
		<div class="boxgrid caption">
			<img src="static/img/800_800_1563353009647mp.png" />
			<div class="cover boxcaption">
				<h3>HUAWEI Mate 20 X (5G)</h3>
				<p>
					8GB+256GB<br /> <a href="" target="_BLANK">全网通版(翡冷翠)</a> <a href=""
						target="_BLANK">价格：¥6199.00 </a>
				</p>
			</div>
		</div>
		<div class="boxgrid slideright">
			<img class="cover" src="static/img/800_800_1561518789796mp.png" />
			<h3>HUAWEI P30 麒麟980</h3>
			<p>
				6GB+128GB<br /> <a href="" target="_BLANK">全网通版（天空之境）</a> <a href=""
					target="_BLANK">价格：¥3688.00 </a>
			</p>
		</div>
		<div class="boxgrid thecombo">
			<img class="cover" src="static/img/800_800_1539244238246mp.png" />
			<h3>HUAWEI Mate 20 RS 保时捷设计</h3>
			<p>
				8GB+512GB <br /> <a href="" target="_BLANK">全网通版（玄黑）</a> <a href=""
					target="_BLANK">价格：¥12999.00 </a>
			</p>
		</div>
		<div class="boxgrid slidedown">
			<img class="cover" src="static/img/800_800_1563762865294mp.png" />
			<h3>HUAWEI nova 5i Pro</h3>
			<p>
				6GB+128GB<br /> <a href="" target="_BLANK">全网通版（翡冷翠）</a> <a href=""
					target="_BLANK">价格：¥2199.00 </a>
			</p>
		</div>

		<div class="boxgrid peek">
			<img class="cover" src="static/img/800_800_1544693593610mp.png" />
			<h3>HUAWEI nova 4 2000万超广角三摄</h3>
			<p>
				8GB+128GB<br /> <a href="" target="_BLANK">全网通版（蜜语红·星耀版）</a> <a
					href="" target="_BLANK">价格：¥2699.00</a>
			</p>
		</div>

		<div style="width:550px;margin:20px auto;"></div>
	</div>

	</bottom>
	<div class="side">
		<ul>
			<li><a href="#"><div class="sidebox">
						<img src="static/img/side_icon01.png">客服中心
					</div>
			</a>
			</li>
			<li><a href="#"><div class="sidebox">
						<img src="static/img/side_icon02.png">客户案例
					</div>
			</a>
			</li>
			<li><a href="javascript:void(0);"><div class="sidebox">
						<img src="static/img/side_icon04.png">QQ客服
					</div>
			</a>
			</li>
			<li><a href="javascript:void(0);"><div class="sidebox">
						<img src="static/img/side_icon03.png">新浪微博
					</div>
			</a>
			</li>
			<li style="border:none;"><a href="javascript:goTop();"
				class="sidetop"><img src="static/img/side_icon05.png">
			</a>
			</li>
		</ul>
	</div>
	<script src="static/js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
			$(document).ready(function($){
				function validate($dom) {
					var flag = true;
					var id = $dom.attr("id");
					var v = $dom.val();

					switch(id) {
						//通行证用户名
						case "userName":
							var $userNameID = $("#userNameId");
							var reg = /^[0-9a-zA-Z][0-9a-zA-Z_.-]{2,16}[0-9a-zA-Z]$/;
							if(v=="") { //输入框为空的时候
								$userNameID.removeClass().addClass("error_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("通行证用户名不能为空，请输入通行证用户名");
								flag = false;

							} else if(reg.test(v) == false) {
								$userNameID.removeClass().addClass("error_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("1.由字母、数字、下划线、点、减号组成<br/>2、只能以数字、字母开头或结尾，且长度为4-18");
								flag = false;
							} else {
								$userNameID.removeClass().addClass("ok_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("用户名输入正确!");
							}
							break;

							//登录密码
						case "pwd":
							var $userNameID = $("#pwdId");
								if(v=="") { //输入框为空的时候
								$userNameID.removeClass().addClass("error_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("密码不能为空,请输入密码");
								flag = false;
							} else if(v.length<6||v.length>16) {
								$userNameID.removeClass().addClass("error_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("密码长度为6-16");
								flag = false;
							} else {
								$userNameID.removeClass().addClass("ok_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("密码输入正确!");
							}

							break;

						//重复登录密码
						case "repwd":
							var pwd=$("#pwd").val();
							var $userNameID = $("#repwdId");
							
								if(v=="") { //输入框为空的时候
								$userNameID.removeClass().addClass("error_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("重复密码不能为空,请重新输入密码");
								flag = false;

							} else if(v!=pwd) {
								$userNameID.removeClass().addClass("error_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("两次输入的密码不一致，请重新输入！");
								flag = false;
							} else {
								$userNameID.removeClass().addClass("ok_prompt"); //清空样式，然后添加新的CSS样式;
								$userNameID.html("密码输入正确!");
							}
							break;
					}
					return flag;
				}
					//绑定用户名
				$("#userName").bind({
					focus: function() {
						$("#userNameId").removeClass().addClass("import_prompt").html("1.由字母、数字、下划线、点、减号组成<br/>2、只能以数字、字母开头或结尾，且长度为4-18");
					},
					blur: function() {
						validate($(this));
					}
				});
				//绑定密码
				$("#pwd").focus(function(){
					$("#pwdId").removeClass().addClass("import_prompt").html("密码长度为6-16");
				}).blur(function(){
					validate($(this));
				})
					//重复密码失去焦点事件
				$("#repwd").blur(function(){
					validate($(this));
				});
			});
			$(document).ready(function(){
				/*点击后切换标题*/
				$("#liebiao2 li").click(function(){
					$(this).siblings().find("div").css("z-index",0);
					$(this).find("div").css("z-index",1);
				});
				
//				$("li").mouseover(function(){
//					$(this).addClass("xuanfu");
//				}).mouseout(function(){
//					$(this).removeClass("xuanfu");
//				})


//侧边栏固定移入显示
	$(".side ul li").hover(function(){
		$(this).find(".sidebox").stop().animate({"width":"124px"},200).css({"opacity":"1","filter":"Alpha(opacity=100)","background":"#ae1c1c"})	
	},function(){
		$(this).find(".sidebox").stop().animate({"width":"54px"},200).css({"opacity":"0.8","filter":"Alpha(opacity=80)","background":"#000"})	
	});

//底部图片

				$('.boxgrid.slidedown').hover(function() {
					$(".cover", this).stop().animate({
						top: '-330px'
					}, {
						queue: false,
						duration: 300
					});
				}, function() {
					$(".cover", this).stop().animate({
						top: '0px'
					}, {
						queue: false,
						duration: 300
					});
				});
				$('.boxgrid.slideright').hover(function() {
					$(".cover", this).stop().animate({
						left: '325px'
					}, {
						queue: false,
						duration: 300
					});
				}, function() {
					$(".cover", this).stop().animate({
						left: '0px'
					}, {
						queue: false,
						duration: 300
					});
				});
				$('.boxgrid.thecombo').hover(function() {
					$(".cover", this).stop().animate({
						top: '260px',
						left: '325px'
					}, {
						queue: false,
						duration: 300
					});
				}, function() {
					$(".cover", this).stop().animate({
						top: '0px',
						left: '0px'
					}, {
						queue: false,
						duration: 300
					});
				});
				$('.boxgrid.peek').hover(function() {
					$(".cover", this).stop().animate({
						top: '90px'
					}, {
						queue: false,
						duration: 160
					});
				}, function() {
					$(".cover", this).stop().animate({
						top: '0px'
					}, {
						queue: false,
						duration: 160
					});
				});
				$('.boxgrid.captionfull').hover(function() {
					$(".cover", this).stop().animate({
						top: '160px'
					}, {
						queue: false,
						duration: 160
					});
				}, function() {
					$(".cover", this).stop().animate({
						top: '260px'
					}, {
						queue: false,
						duration: 160
					});
				});
				$('.boxgrid.caption').hover(function() {
					$(".cover", this).stop().animate({
						top: '160px'
					}, {
						queue: false,
						duration: 160
					});
				}, function() {
					$(".cover", this).stop().animate({
						top: '-120px'
					}, {
						queue: false,
						duration: 160
					});
				});
				$('.boxgrid.peek').hover(function() {
					$(".cover", this).stop().animate({
						top: '260px'
					}, {
						queue: false,
						duration: 160
					});
				}, function() {
					$(".cover", this).stop().animate({
						top: '0px'
					}, {
						queue: false,
						duration: 160
					});
				});
			})
//回到顶部不在ready范围内
	function goTop(){
	$('html,body').animate({'scrollTop':0},600);
	}
 
		</script>
</body>
</html>
