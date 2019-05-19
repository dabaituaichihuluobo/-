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
				<form role="form" method="post" class="form-horizontal" action="updateVip2">
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-5">
							<!-- 开始各种表单 -->
							<div class="form-group">
								<label class="col-sm-7 control-label" for="username">客户姓名</label>
								<div class="col-sm-7">
									<input type="text" id="username" class="form-control"
										value="${vip.name }" name="name">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="phone">电话</label>
								<div class="col-sm-7">
									<input type="text" id="phone" class="form-control" name="phone"
										value="${vip.phone }">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="sex">性别</label>
								<div class="col-sm-7">
									<select id="sex" class="form-control" name="sex">
										<c:if test="${vip.sex==1 }">
											<option value="1" selected="selected">男</option>
											<option value="2">女</option>
										</c:if>

										<c:if test="${vip.sex==2 }">
											<option value="1">男</option>
											<option value="2" selected="selected">女</option>
										</c:if>

									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="age">性别</label>
								<div class="col-sm-7">
									<select id="age" class="form-control" name="age">
										<option id="chooseAge">${vip.age }</option>
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
										<c:if test="${vip.viplength==1 }">
											<option id="chooseViplength" value="1">季卡</option>
										</c:if>
										<c:if test="${vip.viplength==2 }" >
											<option id="chooseViplength" value="2">半年卡</option>
										</c:if>
										<c:if test="${vip.viplength==3 }" >
											<option id="chooseViplength" value="3">年卡</option>
										</c:if>


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
											<c:if test="${sales.sid==vip.uid}">
												<option value="${sales.sid}" selected>${sales.name}</option>
											</c:if>
											<c:if test="${sales.sid!=vip.uid}">
												<option value="${sales.sid}">${sales.name}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="vipnum">vip卡号</label>
								<div class="col-sm-7">
									<input type="text" id="vipnum" class="form-control"
										value="${vip.vipnum}" name="vipnum" readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="note">备注</label>
								<div class="col-sm-7">
									<input type="text" id="note" class="form-control"
										value="${vip.note }" name="note">
								</div>
							</div>
						</div>
						<!-- 右边结束 -->
						<br> <input type="submit" class="btn btn-default" style="cursor: pointer;"  value="确定">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>