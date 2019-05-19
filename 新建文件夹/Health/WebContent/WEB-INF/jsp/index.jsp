<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>健身房后台管理系统</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/normalize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/pe-icon-7-filled.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/flag-icon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/cs-skin-elastic.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/assets/css/style.css">
<link
	href="${pageContext.request.contextPath }/statics/assets/weather/css/weather-icons.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/statics/assets/calendar/fullcalendar.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/statics/assets/css/charts/chartist.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/statics/assets/css/lib/vector-map/jqvmap.min.css"
	rel="stylesheet">

<style>
#weatherWidget .currentDesc {
	color: #ffffff !important;
}

.traffic-chart {
	min-height: 335px;
}

#flotPie1 {
	height: 150px;
}

#flotPie1 td {
	padding: 3px;
}

#flotPie1 table {
	top: 20px !important;
	right: -10px !important;
}

.chart-container {
	display: table;
	min-width: 270px;
	text-align: left;
	padding-top: 10px;
	padding-bottom: 10px;
}

#flotLine5 {
	height: 105px;
}

#flotBarChart {
	height: 150px;
}

#cellPaiChart {
	height: 160px;
}
</style>
</head>
<body>
	<h3 align="center">吉祥鸟健身后台管理系统</h3>
	<!-- Left Panel -->
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="login"><i
							class="menu-icon fa fa-laptop"></i>${user.name }</a></li>
					<li class="menu-title">会籍部门</li>
					<!-- /.menu-title -->
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-cogs"></i>已办卡
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="members/vip"
								target="aaa">已办卡会员信息</a></li>
						</ul></li>
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-table"></i>未办卡
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="members/intention"
								target="aaa">有意向客户</a></li>
							<li><i class="fa fa-table"></i><a href="members/order"
								target="aaa">预约体验客户</a></li>
						</ul></li>
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-th"></i>会员卡到期时间
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="members/expire"
								target="aaa">会员卡到期时间</a></li>
						</ul></li>
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-cogs"></i>增加
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="members/addVip"
								target="aaa">增加会员</a></li>
							<li><i class="fa fa-table"></i><a href="members/addCustomer"
								target="aaa">增加客户</a></li>
						</ul></li>

					<li class="menu-title">私教部门</li>
					<!-- /.menu-title -->
					<li class="menu-item-has-children dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-tasks"></i>已买课</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="coach/buyClass" target="aaa">已买课会员信息</a></li>
						</ul>
					</li>
					<li class="menu-item-has-children dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-tasks"></i>未买课</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="coach/intention" target="aaa">有意向买课客户</a></li>
							<li><i class="fa fa-table"></i><a href="coach/tice" target="aaa">预约体测客户</a></li>
						</ul>
					</li>
					<li class="menu-item-has-children dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-area-chart"></i>私教课程到期时间</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="coach/expiredate" target="aaa">私教课程到期时间</a></li>
						</ul>
					</li>
					<li class="menu-item-has-children dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-area-chart"></i>增加课程</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="coach/addclass" target="aaa">增加课程</a></li>
						</ul>
					</li>
				

					
					<li class="menu-title">管理员</li>
					<!-- /.menu-title -->
					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-cogs"></i>管理账号
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="manager/addUser"
								target="aaa">增加账号</a></li>
							<li><i class="fa fa-table"></i><a href="manager/user"
								target="aaa">查看账号</a></li>
						</ul></li>
						
						<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-cogs"></i>管理员工
					</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="fa fa-table"></i><a href="manager/addUser"
								target="aaa">教练列表</a></li>
							<li><i class="fa fa-table"></i><a href="manager/user"
								target="aaa">销售列表</a></li>
								<li><i class="fa fa-table"></i><a href="manager/user"
								target="aaa">增加员工</a></li>
						</ul></li>
						
						
					
					<li>&nbsp</li>
					<li>&nbsp</li>
					<li>&nbsp</li>
					<li>&nbsp</li>
				</ul>
			</div>
		</nav>
	</aside>
	<div id="right-panel" class="right-panel">
		<div>
			<iframe name="aaa" width="1000px" height="800px"
				style="border: none;"> </iframe>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/vendor/jquery-2.1.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/lib/chart-js/Chart.bundle.js"></script>

	<script
		src="${pageContext.request.contextPath }/statics/assets/js/lib/chartist/chartist.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/lib/chartist/chartist-plugin-legend.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/lib/flot-chart/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/lib/flot-chart/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/lib/flot-chart/jquery.flot.spline.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/weather/js/jquery.simpleWeather.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/weather/js/weather-init.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/moment/moment.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/calendar/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/calendar/fullcalendar-init.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/init/weather-init.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/init/fullcalendar-init.js"></script>

	
</body>
</html>