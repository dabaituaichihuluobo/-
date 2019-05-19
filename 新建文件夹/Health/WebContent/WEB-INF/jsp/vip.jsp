<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>已办卡</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/pe-icon-7-filled.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/flag-icon.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/assets/css/style.css">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

<style type="text/css">
</style>
<script type="text/javascript">
function m1(vid){
	location.href="updateVip?vid="+vid
	
}
function m2(vid){
	var a=confirm("确定要删除吗？")
	if(a){
		location.href="deleteVip?vid="+vid
	}
}
</script>
</head>
<body>
	<!-- Left Panel -->
	<div class="content">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
							<strong class="card-title">已办卡会员</strong>
						</div>
						<div class="table-stats order-table ov-h">
							<table class="table ">
								<thead>
									<tr>
										<th class="serial">#</th>
										<th class="avatar">头像</th>
										<th>姓名</th>
										<th>性别</th>
										<th>年龄</th>
										<th>电话</th>
										<th>卡号</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${vipList}" var="vip" varStatus="index">
										<tr>
											<td class="serial">${index.count}</td>
											<td class="avatar">
												<div class="round-img">
													<a href="#"><img class="rounded-circle"
														src="${pageContext.request.contextPath }/${vip.note }" alt="a"></a>
												</div>
											</td>
											<td>${vip.name }</td>
											<c:if test="${vip.sex==1 }">
												<td><span class="name">男</span></td>
											</c:if>
											<c:if test="${vip.sex==2 }">
												<td><span class="name">女</span></td>
											</c:if>
											<td><span class="product">${vip.age }</span></td>
											<td><span class="count">${vip.phone }</span></td>
											<td><span class="count">${vip.vipnum }</span></td>

											<td><span class="badge badge-complete" onclick="return m2(${vip.vid})" style="cursor: pointer;" >删除</span>
											&nbsp&nbsp&nbsp
											<span class="badge badge-complete" onclick="m1(${vip.vid})" style="cursor: pointer;" >编辑</span></td>
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
	<script src="${pageContext.request.contextPath }/statics/assets/js/vendor/jquery-2.1.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/assets/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/assets/js/jquery.matchHeight.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/assets/js/main.js"></script>


</body>
</html>