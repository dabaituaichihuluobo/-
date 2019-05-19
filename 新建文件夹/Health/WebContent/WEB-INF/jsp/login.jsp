<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>吉祥鸟健身后台管理系统</title>
<link href="${pageContext.request.contextPath }/statics/css/login.css" rel="stylesheet" rev="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jQuery1.7.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var $tab_li = $('#tab ul li');
		$tab_li.hover(function() {
			$(this).addClass('selected').siblings().removeClass('selected');
			var index = $tab_li.index(this);
			$('div.tab_box > div').eq(index).show().siblings().hide();
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		$(".screenbg ul li").each(function() {
			$(this).css("opacity", "0");
		});
		$(".screenbg ul li:first").css("opacity", "1");
		var index = 0;
		var t;
		var li = $(".screenbg ul li");
		var number = li.size();
		function change(index) {
			li.css("visibility", "visible");
			li.eq(index).siblings().animate({
				opacity : 0
			}, 3000);
			li.eq(index).animate({
				opacity : 1
			}, 3000);
		}
		function show() {
			index = index + 1;
			if (index <= number - 1) {
				change(index);
			} else {
				index = 0;
				change(index);
			}
		}
		t = setInterval(show, 8000);
		//根据窗口宽度生成图片宽度
		var width = $(window).width();
		$(".screenbg ul img").css("width", width + "px");
	});
</script>
</head>
<body>
	<div id="tab">
		<ul class="tab_menu">
			<li class="selected">管理员登录</li>
			<li>销售经理登录</li>
			<li>私教经理登录</li>
		</ul>
		<div class="tab_box">
			<!-- 管理员登录开始 -->
			<div>
				<div class="stu_error_box"></div>
				<form action="index" class="stu_login_error" method="post">
					<div id="username" name="username">
						<label>帐&nbsp;&nbsp;&nbsp;号：</label> <input type="text"
							id="stu_username_hide" name="username" placeholder="输入账号"/>
						<!--ajaxurl="demo/valid.jsp"-->
					</div>
					<div id="password">
						<label>密&nbsp;&nbsp;&nbsp;码：</label> <input type="password"
							id="stu_password_hide" name="password" placeholder="********"/>
					</div>
					<div id="remember">
						<input type="checkbox" name="remember"> <label>记住密码</label>
					</div>
					<div id="login">
						<button type="submit" style="cursor: pointer;"	>登录</button>
					</div>
				</form>
			</div>
			<!-- 管理员登录结束-->
			<!-- 销售经理登录开始-->
			<div class="hide">
				<div class="tea_error_box"></div>
				<form action="index" method="post" class="tea_login_error">
					<div id="username">
						<label>帐&nbsp;&nbsp;&nbsp;号：</label> <input type="text" id="tea_username_hide"
							name="username" placeholder="请输入销售经理账号"/>
					</div>
					<div id="password">
						<label>密&nbsp;&nbsp;&nbsp;码：</label> <input type="password"
							id="tea_password_hide" name="password" placeholder="********"/>
					</div>
					<div id="remember">
						<input type="checkbox" name="remember"> <label>记住密码</label>
					</div>
					<div id="login">
						<button type="submit" style="cursor: pointer;"	>登录</button>
					</div>
				</form>
			</div>
			<!-- 销售经理登录结束-->
			<!-- 私教经理登录开始-->
			<div class="hide">
				<div class="sec_error_box"></div>
				<form action="index" method="post" class="sec_login_error">
					<div id="username">
						<label>帐&nbsp;&nbsp;&nbsp;号：</label> <input type="text" id="sec_username_hide"
							name="username" placeholder="请输入教练账号"/>
						<!--ajaxurl="demo/valid.jsp"-->
					</div>
					<div id="password">
						<label>密&nbsp;&nbsp;&nbsp;码：</label> <input type="password"
							id="sec_password_hide" name="password" placeholder="*********"/>
					</div>
					<div id="remember">
						<input type="checkbox" name="remember"> <label>记住密码</label>
					</div>
					<div id="login">
						<button type="submit" style="cursor: pointer;"	>登录</button>
					</div>
				</form>
			</div>
			<!-- 私教经理登录结束-->
		</div>
	</div>
	<div class="screenbg">
		<ul>
			<li><a href="javascript:;"><img src="${pageContext.request.contextPath }/statics/images/0.jpg"></a></li>
			<li><a href="javascript:;"><img src="${pageContext.request.contextPath }/statics/images/1.jpg"></a></li>
			<li><a href="javascript:;"><img src="${pageContext.request.contextPath }/statics/images/2.jpg"></a></li>
		</ul>
	</div>
</body>
</html>