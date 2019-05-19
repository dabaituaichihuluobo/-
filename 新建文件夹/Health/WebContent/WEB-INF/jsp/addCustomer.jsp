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
<script type="text/javascript">
$(document).ready(function(){
	$("#intention").change(function(){
		if($(this).val()==2){
			$("#orderdate").removeAttr("readonly")
		}
		if($(this).val()==1){
			$("#orderdate").attr("readonly","readonly")
		}
	})
})
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card-header">
					<strong class="card-title">增加客户</strong>
				</div>
				<br>
				<form role="form" class="form-horizontal" action="addCustomer2"
					>
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
								<label class="col-sm-7 control-label" for="intention">意向</label>
								<div class="col-sm-7">
									<select id="intention" class="form-control" name="intention">
										<option value="1" >无预约</option>
										<option value="2" >有预约</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-7 control-label" for="orderdate">预约时间</label>
								<div class="col-sm-7">
									<input type="text" id="orderdate" class="form-control"
										readonly="readonly" name="orderdate">
								</div>
							</div>

						</div>
						<!-- 右边结束 -->

						<br> <input style="cursor: pointer;"	type="submit" class="btn btn-default" value="确定">
					</div>
				</form>
			</div>

		</div>

	</div>
	
</body>
</html>