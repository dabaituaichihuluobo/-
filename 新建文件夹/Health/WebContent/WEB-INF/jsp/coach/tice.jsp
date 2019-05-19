<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ela Admin - HTML5 Admin Template</title>
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
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<script type="text/javascript">
function m2(ccid){
	confirm("确定要删除吗")
	location.href="deleteTice?ccid="+ccid
}
</script>
<body>
	<!-- Left Panel -->
	<div class="content">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<strong class="card-title">预约体测客户</strong>
						</div>
						<div class="table-stats order-table ov-h">
							<table class="table ">
								<thead>
									<tr>
										<th class="serial">序号</th>
										<th>姓名</th>
										<th>性别</th>
										<th>会员卡号</th>
										<th>购买课程</th>
										<th>私人教练</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${tcList }" var="tcl" varStatus="index">
										<tr>
											<td class="serial">${index.count}</td>
											<td>${tcl.cname}</td>
											<c:if test="${tcl.csex==1 }">
												<td><span class="name">男</span></td>
											</c:if>
											<c:if test="${tcl.csex==2 }">
												<td><span class="name">女</span></td>
											</c:if>
											<td>${tcl.cphone}</td>
											<td>${tcl.cvipnum}</td>
											<td>${tcl.coach.name}</td>
											<td ><span class="badge badge-pending"
												style="cursor: pointer;" onclick="return m2(${tcl.ccid})">删除</span></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>




		</div>
		<!-- .animated -->
	</div>
	<!-- .content -->

	<div class="clearfix"></div>




	<!-- Right Panel -->

	<!-- Scripts -->
	<script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.matchHeight.min.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>