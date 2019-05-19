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
<script
	src="${pageContext.request.contextPath }/statics/assets/js/vendor/jquery-2.1.4.min.js"></script>

<script type="text/javascript">
	
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#vipnum").blur(function(){
		var a=$("#vipnum").val()
		$.ajax({
			"type":"post",
			"url":"getVip",
			"data":a,
			"contentType":"application/json",
			success:function(data){
				if(data=="no"){
					alert("你输入的卡号不存在")
					$("#vipname").val("")
					$("#vipnum ").val("")
				}else{
				$("#vipname").val(data)}
			}
		})
	})
})


</script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card-header">
					<strong class="card-title">增加课程</strong>
				</div>
				<br>
				<form role="form" class="form-horizontal" action="addclass2">

					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-5">
							<!-- 开始各种表单 -->
							<div class="form-group">
								<label class="col-sm-7 control-label" for="buyclass">购买节数</label>
								<div class="col-sm-7">
									<select id="buyclass" class="form-control" name="buyclass">
										<%
											for (int i = 10; i < 51; i++) {
										%>
										<option><%=i%></option>
										<%
											}
										%>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-7 control-label" for="vipnum">会员卡号</label>
								<div class="col-sm-7">
									<input type="text" id="vipnum" class="form-control"
										name="vipnum">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-7 control-label" for="vipname">会员姓名</label>
								<div class="col-sm-7">
									<input type="text" id="vipname" class="form-control"
										name="vipname" readonly="readonly">
								</div>
							</div>
						</div>
						<!-- 左边结束 -->
						<!-- 右边开始 -->
						<div class="col-sm-5">
							<div class="form-group">
								<label class="col-sm-7 control-label" for="classes">课程名称</label>
								<div class="col-sm-7">
									<input class="form-control" name="classes">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-7 control-label" for="cid">私人教练</label>
								<div class="col-sm-7">
									<select id="cid" class="form-control" name="cid">
										<c:forEach var="cl" items="${coachList }">
											<option value="${cl.cid}">${cl.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>

						</div>
						<br> <input style="cursor: pointer;" type="submit"
							class="btn btn-default" value="确定">
					</div>
					<!-- 右边结束 -->

				</form>
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
		src="${pageContext.request.contextPath }/statics/assets/js/moment/moment.js"></script>
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