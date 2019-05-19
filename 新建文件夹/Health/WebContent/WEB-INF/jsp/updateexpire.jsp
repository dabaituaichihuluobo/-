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
	href="${pageContext.request.contextPath }/statics/assets/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath }/statics/assets/js/vendor/jquery-2.1.4.min.js"></script>
<script>
	$().ready(function() {
		$("#viplength").focus(function() {
			$("#chooseViplength").hide()
		})
		$("#age").focus(function() {
			$("#chooseAge").hide()
		})
	})
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card-header">
					<strong class="card-title">修改会员</strong>
				</div>
				<br>
				<form role="form" method="post" class="form-horizontal"
					action="updateVip2">

					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-7">
							<!-- 开始各种表单 -->
							<div class="form-group">
								<label class="col-sm-7 control-label" for="username">客户姓名</label>
								<div class="col-sm-10">
									<input type="text" id="username" class="form-control"
										value="${vip.name }" name="name" readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="expire">到期时间</label>
								<div class="col-sm-10">
									<input type="text" id="username" class="form-control"
										value="${vip.expire }" name="expire" readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-10 control-label" for="expire">续卡时长</label>
								<div class="col-sm-10">
									<select name="viplength" class="form-control">
										<option value="1">季卡</option>
										<option value="2">半年卡</option>
										<option value="3">年卡</option>
									</select>

								</div>
							</div>
<br> <input type="submit" style="cursor: pointer;" class="btn btn-default" value="确定">
						</div>
					</div>



				</form>
			</div>
		</div>
	</div>
</body>
</html>