<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员注册页面</title>
</head>
<body>
	<s:form action="memberRegister" method="post">
		<h4><s:text name="欢迎注册会员"></s:text></h4>
		<s:property value="exception.message"/>
		<s:textfield name="member.name" label="会员姓名" tooltip="Enter your name!" required="true"></s:textfield>
		<s:password name="member.password" label="会员口令" tooltip="Enter your password!"></s:password>
		<s:textfield name="member.address" label="会员地址"></s:textfield>
		<s:textfield name="member.email" label="会员邮箱"></s:textfield>
		<s:textfield name="member.level" label="会员级别"></s:textfield>
		<s:submit value="提交"/>
	</s:form>
</body>
</html>