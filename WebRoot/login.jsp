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
<title>Demo Login</title>
</head>
<body>
<s:form action="user-login" method="post">
	<s:textfield name="username" label="�Τ�W" id="username"></s:textfield>
	<s:password name="password" label="�K�X" id="password"></s:password>
	<s:submit value="�n��"></s:submit><s:reset value="���m"></s:reset>
</s:form>

<input type="button" name="goback" value="��^" id="goback">
</body>
</html>