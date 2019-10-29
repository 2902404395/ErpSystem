<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="statics/css/Login.css">
	<script type="text/javascript" src="statics/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="statics/js/Login.js"></script>

  </head>
  <body>
  	 <div id="login_div1">
    	<form id="myform" method="post" name="loginform" action="/login/login" >
    	<span id="font">账号登录</span>	
		<dl>
			<dd style="padding-top: 30px">
				<!--autocomplete清除上一次的记录  -->
				<!-- <span id="loginname">登录名</span> -->
				<div id="divname">
					<input type="text" name="username" id="username" autocomplete="off"  />
				</div>
				<div id="usernameerror"></div>
			</dd>
			<dd>
				<div id="divpwd">
					<input type="password" name="password" id="password"  />
				</div>
				<div id="pwderror"></div>
			</dd>
		</dl>
		<div>
			<input id="loginsub" type="submit" value="登    录" />
		</div>
		<div id="imglogin"><img src="statics/images/login.png"></div>
		<span id="loginname">登录名</span>
		<span id="loginpwd">密码</span>
	</form>
		<div id="copyright">©2019 S2T144班乐途组 版权所有</div>
    </div>
    <script type="text/javascript">

    </script>
    
  </body>
</html>
