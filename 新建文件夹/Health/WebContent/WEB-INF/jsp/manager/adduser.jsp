<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加会员</title>
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
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
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

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card-header">
					<strong class="card-title">增加用户</strong>
				</div>
				<br>
				<form role="form" class="form-horizontal" action="addUser2">
					<div class="row">

						<div class="col-sm-1"></div>
						<div class="col-sm-5">

							<!-- 开始各种表单 -->
							<div class="form-group">
								<label class="col-sm-7 control-label" for="username">用户账号</label>
								<div class="col-sm-7">
									<input type="text" id="username" class="form-control"
										placeholder="账号" name="username">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="password">用户密码</label>
								<div class="col-sm-7">
									<input type="text" id="password" class="form-control"
										placeholder="密码" name="password">
								</div>
							</div>
						</div>

						<!-- 左边结束 -->

						<div class="col-sm-5">
							<!-- 右边开始 -->
							<div class="form-group">
								<label class="col-sm-7 control-label" for="name">用户姓名</label>
								<div class="col-sm-7">
									<input type="text" id="name" class="form-control"
										placeholder="姓名" name="name">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="type">用户权限</label>
								<div class="col-sm-7">
									<select class="form-control" name="type">
										<option value="5">最高管理员</option>
										<option value="4">会籍经理</option>
										<option value="3">私教经理</option>
										<option value="2">销售人员</option>
										<option value="1">私人教练</option>
									</select>
								</div>
							</div>
						</div>
						<!-- 右边结束 -->

						<br> <input type="submit" class="btn btn-default" value="确定">
					</div>
				</form>
			</div>
		</div>




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
		src="${pageContext.request.contextPath }/statics/assets/js/lib/moment/moment.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/calendar/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/calendar/fullcalendar-init.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/init/weather-init.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/assets/js/init/fullcalendar-init.js"></script>

</body>
</html>