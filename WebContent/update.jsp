<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改会员信息</title>
</head>
<body>
	<s:form action="memberUpdate" method="post">
		<h4><s:text name="修改会员信息"></s:text></h4>
		<s:actionerror/>
		
		<%--不允许修改会员id，当需要将会员id传递给更新会员动作，所以使用隐藏表单域标签来接收显示会员页面传递来的会员id
			在update.jsp页面提交时再传递给更新会员的动作memberUpdate。
		 --%>
		<s:hidden name="member.id" value="%{member.id}"></s:hidden>
		<s:textfield name="member.name" label="会员姓名" required="true"></s:textfield>
		<s:textfield name="member.password" label="会员口令"></s:textfield>
		<s:textfield name="member.address" label="会员地址"></s:textfield>
		<s:textfield name="member.email" label="会员邮箱"></s:textfield>
		<s:textfield name="member.level" label="会员级别"></s:textfield>
		<s:submit value="提交"/>
	</s:form>
</body>
</html>