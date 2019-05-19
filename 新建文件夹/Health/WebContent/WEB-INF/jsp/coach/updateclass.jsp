<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加会员</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/statics/assets/js/vendor/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#overclass").blur(function(){
			var a =$("#buyclass").val();
			var b =$("#overclass").val();
			var c =a-b;
			$("#residue").val(c);
		});
	})
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card-header">
					<strong class="card-title">修改私教课程</strong>
				</div>
				<br>
				<form role="form" method="post" class="form-horizontal" action="updateclass2">
				<input name="id" value="${course.id }" type="hidden">
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-5">
						
							<!-- 开始各种表单 -->
							<div class="form-group">
								<label class="col-sm-7 control-label" for="username">客户姓名</label>
								<div class="col-sm-7">
									<input type="text" id="username" class="form-control"
										value="${course.vip.name }" name="name" readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="vipnum">会员卡号</label>
								<div class="col-sm-7">
									<input type="text" id="vipnum" class="form-control" name="vipnum" 
										value="${course.vip.vipnum }" readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="classes">课程名称</label>
								<div class="col-sm-7">
									<input type="text" id="classes" class="form-control"
										value="${course.classes}" name="classes">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="cid">私人教练</label>
								<div class="col-sm-7">
									<select id="cid" class="form-control" name="cid">
										<c:forEach var="cl" items="${coachList}" >
											<option value="${cl.cid }">${cl.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<!-- 左边结束 -->

						<!-- 右边开始 -->
						<div class="col-sm-5">

							<div class="form-group">
								<label class="col-sm-7 control-label" for="buyclass">已买课时</label>
								<div class="col-sm-7">
									<input type="text" id="buyclass" class="form-control"
										value="${course.buyclass}" name="buyclass" readonly="readonly">
								</div>
							</div>


							<div class="form-group">
								<label class="col-sm-7 control-label" for="overclass">已上课时</label>
								<div class="col-sm-7">
									<input type="text" id="overclass" class="form-control"
										value="${course.overclass}" name="overclass">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="residue">剩余课时</label>
								<div class="col-sm-7">
									<input type="text" id="residue" class="form-control"
										value="${course.residue}" name="residue" readonly="readonly">
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-7 control-label" for="orderdate">预约下次课时</label>
								<div class="col-sm-7">
									<input type="text" id="orderdate" class="form-control"
										value="" name="orderdate">
								</div>
							</div>
						</div>
						<!-- 右边结束 -->
						<br> <input style="cursor: pointer;" type="submit" class="btn btn-default" value="确定">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>