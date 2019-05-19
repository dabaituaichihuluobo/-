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
					<strong class="card-title">增加会员</strong>
				</div>
				<br>
				<form role="form" class="form-horizontal" action="addVip2"
				method="post"
				 enctype="multipart/form-data">
					<div class="row">

						<div class="col-sm-1"></div>
						<div class="col-sm-5">

							<!-- 开始各种表单 -->
							<div class="form-group">
								<label class="col-sm-7 control-label" for="username">客户姓名</label>
								<div class="col-sm-7">
									<input type="text" id="username" class="form-control"
										placeholder="姓名" name="name">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="phone">电话</label>
								<div class="col-sm-7">
									<input type="text" id="phone" class="form-control" name="phone"
										placeholder="请输入11位电话">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="sex">性别</label>
								<div class="col-sm-7">
									<select id="sex" class="form-control" name="sex">
										<option value="1">男</option>
										<option value="2">女</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="age">性别</label>
								<div class="col-sm-7">
									<select id="age" class="form-control" name="age">
										<%
											for (int i = 18; i < 51; i++) {
										%>
										<option><%=i%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>
						</div>
						<!-- 左边结束 -->

						<!-- 右边开始 -->
						<div class="col-sm-5">


							<div class="form-group">
								<label class="col-sm-7 control-label" for="viplength">办卡时长</label>
								<div class="col-sm-7">
									<select id="viplength" class="form-control" name="viplength">
										<option value="1">季卡</option>
										<option value="2">半年卡</option>
										<option value="3">年卡</option>
									</select>
								</div>
							</div>


							<div class="form-group">
								<label class="col-sm-7 control-label" for="uid">销售</label>
								<div class="col-sm-7">
									<select id="uid" class="form-control" name="uid">
										<c:forEach var="sales" items="${salesList }">
											<option value="${sales.sid}">${sales.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="vipnum">vip卡号</label>
								<div class="col-sm-7">
									<input type="text" id="vipnum" class="form-control"
										value=${maxVipNum+1 } name="vipnum" readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="note">头像</label>
								<div class="col-sm-7">
									<input type="file" id="note" class="form-control" name="upfile"
									>
								</div>
							</div>

							

							


						</div>
						<!-- 右边结束 -->

						<br> <input style="cursor: pointer;" type="submit"
							class="btn btn-default" value="确定">
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