<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>全部账号信息</title>
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


<style type="text/css">
</style>
<script type="text/javascript">
function m1(uid){
	location.href="updateUser?uid="+uid
}

function m2(uid){
	var a=confirm("确定要删除吗？")
	if(a){
		location.href="deleteUser?uid="+uid
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
							<strong class="card-title">用户信息</strong>
						</div>
						<div class="table-stats order-table ov-h">
							<table class="table ">
								<thead>
									<tr>
										<th class="serial">#</th>
										<th>账号</th>
										<th>密码</th>
										<th>姓名</th>
										<th>类型</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${userList}" var="user" varStatus="index">
										<tr>
											<td class="serial">${index.count}</td>
											<td><span class="product">${user.username}</span></td>
											<td><span class="product">${user.password }</span></td>
											<td><span class="product">${user.name}</span></td>
											<c:if test="${user.type==5 }"><td><span class="product">最高管理员</span></td></c:if>
											<c:if test="${user.type==4 }"><td><span class="product">会籍经理</span></td></c:if>
											<c:if test="${user.type==3 }"><td><span class="product">私教经理</span></td></c:if>
											<c:if test="${user.type==2 }"><td><span class="product">销售人员</span></td></c:if>
											<c:if test="${user.type==1 }"><td><span class="product">私人教练</span></td></c:if>
											<td><span class="badge badge-complete" onclick="return m2(${user.uid})">删除</span>
											&nbsp&nbsp&nbsp
											<span class="badge badge-complete" onclick="m1(${user.uid})">编辑</span></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.table-stats -->
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