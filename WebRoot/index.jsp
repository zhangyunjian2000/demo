<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
	pageContext.setAttribute("ctx", request.getContextPath());
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

#content {
	width: 90px;
	position: relative;
	left: 50%;
	top: 350px;
}
</style>
<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#login").click(function() {
			location.href = "login.jsp";
		});
		$("#register").click(function() {
			location.href = "register.jsp";
		});
	});
</script>
<title>My JSP Demo page</title>
</head>

<body>
	<div id="content">
		<input type="button" name="login" value="µn¿ý" id="login"/>
		 <input	type="button" name="register" value="µù¥U" id="register"/>
	</div>
</body>
</html>
