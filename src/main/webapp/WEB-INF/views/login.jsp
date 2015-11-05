<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Sues在线题库</title>
		<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="<%=basePath%>resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css" rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<style type="text/css">
			.form-group {
				margin-bottom: 5px;
				height: 59px;
			}

		</style>
	</head>
	<body>
		<header>
			<div class="container">
				<div class="row">
						<div class="col-xs-12" id="login-info">
							<c:choose>
								<c:when
									test="${not empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}">
									<div id="login-info-user">
										<a
											href="user-detail/${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}"
											id="system-info-account" target="_blank">${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}</a>
										<span>|</span> <a href="j_spring_security_logout"><i
											class="fa fa-sign-out"></i> 退出</a>
									</div>
								</c:when>
								<c:otherwise>
									<a class="btn btn-primary" href="user-register">用户注册</a>
									<a class="btn btn-success" href="user-login-page">登录</a>
								</c:otherwise>
							</c:choose>
						</div>
				</div>
			</div>
		</header>
		<!-- Navigation bar starts -->

		<div class="navbar bs-docs-nav" role="banner">
			<div class="container">
				<nav class="collapse navbar-collapse bs-navbar-collapse"
				role="navigation">
					<ul class="nav navbar-nav">
						<li>
							<a href="home"><i class="fa fa-home"></i>主页</a>
						</li>
						<li>
							<a href="student/usercenter"><i class="fa fa-dashboard"></i>会员中心</a>
						</li>
						<li>
							<a href="student/setting"><i class="fa fa-cogs"></i>个人设置</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Navigation bar ends -->

		<div class="content" style="margin-bottom: 100px;">

			<div class="container" >
				<div class="row">

					<div class="col-xs-12">
							<h5>登陆</h5>
							<div class="form">
								<!-- Login form (not working)-->
								<form class="form-horizontal" action="j_spring_security_check" method="post">
									<!-- Username -->
									<div class="form-group" style="width=100%;">
										<label class="control-label col-xs-3" for="username">用户名</label>
										<div class="col-xs-9">
											<input type="text" class="form-control" name="j_username">
										</div>
									</div>
									<!-- Password -->
									<div class="form-group">
										<label class="control-label col-xs-3" for="password">密码</label>
										<div class="col-xs-9">
											<input type="password" class="form-control" name="j_password">
										</div>
									</div>
									<!-- Buttons -->
									<div class="form-group">
										<!-- Buttons -->
										<div class="col-xs-9 col-xs-offset-3">
											<button type="submit" class="btn btn-default">
												登陆
											</button>
											<button type="reset" class="btn btn-default">
												取消
											</button>
											<span class="form-message">${result}</span>
										</div>
									</div>
								</form>
								没有账号? <a href="user-register">注册</a>
							</div>
					</div>
				</div>

			</div>

		</div>
	<footer>
				<div class="col-md-12">
						<p>
							SuesMinTech Copyright © <a href="http://www.yiban.cn/"
								target="_blank">yiban</a> - <a href="." target="_blank">主页</a> |
							<a href="http://www.yiban.cn/" target="_blank">关于我们</a> | <a
								href="http://www.yiban.cn/" target="_blank">FAQ</a> | <a
								href="http://www.yiban.cn/" target="_blank">联系我们</a>
						</p>
				</div>


	</footer>

		<!-- Slider Ends -->

		<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript"
		src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<!-- Bootstrap JS -->
		<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>

	</body>
</html>