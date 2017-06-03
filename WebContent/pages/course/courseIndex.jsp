<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ThemeBucket">
<link rel="shortcut icon" href="#" type="image/png">

<title>课程管理</title>

<!--data table-->
<link href="js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="js/data-tables/DT_bootstrap.css" />

<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
</head>

<body class="sticky-header">
	<input id="path" type="hidden" value="<%=path%>">
	<section> <%@include file="/pages/left.jsp"%>
	<!-- main content start-->
	<div class="main-content">

		<%@include file="/pages/topMenu.jsp"%>

		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row">
				<div class="col-sm-12">
					<section class="panel"> <header class="panel-heading">
					课程列表 <span class="tools pull-right"> </span> </header>
					<div class="panel-body">
						<div class="adv-table">
							<table class="display table table-bordered " id="hidden-table-info">
								<thead>
									<tr>
										<th>课程号</th>
										<th>课程名</th>
										<th>班级</th>
										<th>专业</th>
										<th>学院</th>
										<s:if test="#session.userInfo.admin==103"></s:if><s:else>
										<th>操作</th>
										</s:else>
									</tr>
								</thead>
								<tbody>
									<s:iterator value="courseList">
										<tr>
											<td><s:property value="id" /></td>
											<td><s:property value="name" /></td>
											<td><s:property value="classId" /></td>
											<td><s:property value="majorName" /></td>
											<td><s:property value="academy" /></td>
											<s:if test="#session.userInfo.admin==103"></s:if><s:else>
											<td><a href="course/editCourse?id=<s:property value="id" />">修改</a> &nbsp; &nbsp; <a
												href="javascript:;" onclick="deleteCourse(<s:property value="id" />)">删除</a></td>
												</s:else>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
					</section>
				</div>
			</div>
		</div>
		<!--body wrapper end-->


		<!--footer section start-->
		<footer> 2017 &copy; GOBOOK<a href="http://www.zhiping.me/"
			target="_blank"> &nbsp;ZPING</a> </footer>
		<!--footer section end-->


	</div>
	<!-- main content end--> </section>

	<!-- Placed js at the end of the document so the pages load faster -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>

	<!--data table-->
	<script type="text/javascript"
		src="js/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/data-tables/DT_bootstrap.js"></script>

	<!--common scripts for all pages-->
	<script src="js/scripts.js"></script>

	<!--script for editable table-->
		<script src="js/course/courseManager.js"></script>
	<script src="js/course/verCourse.js"></script>
<script type="text/javascript">
		$(function() {
			$("#course").addClass("nav-active");
			$("#courseIndex").addClass("active");
		})
	</script>


</body>
</html>
