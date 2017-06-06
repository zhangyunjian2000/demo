<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
	pageContext.setAttribute("ctx", request.getContextPath());
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() {
 		$("#goback").click(function(){
 			location.href="/demo";
 		});
	});
</script>
<title>Demo Register</title>
</head>
<body>
	<s:form action="user-XXX" method="post">
		<s:textfield name="username" label="用戶名" id="username"></s:textfield>
		<s:password name="password" label="密碼" id="password"></s:password>
		<s:textfield name="email" label="Email" id="email"></s:textfield>
		<s:submit value="註冊"></s:submit>
	</s:form>

<input type="button" name="goback" value="返回" id="goback">
</body>
</html>