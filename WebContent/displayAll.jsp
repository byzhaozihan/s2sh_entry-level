<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示会员信息</title>
</head>
<body>
	<h4>会员信息</h4>
	<table border='1'>
		<tr>
			<td>会员id</td><td>会员名</td><td>密码</td><td>地址</td><td>邮箱</td><td>级别</td><td>删除</td><td>修改</td>
		</tr>
			<s:iterator value="#request.memberList" id="mb">
				<tr>
					<td><s:property value="#mb.id"/></td>
					<td><s:property value="#mb.name"/></td>
					<td><s:property value="#mb.password"/></td>
					<td><s:property value="#mb.address"/></td>
					<td><s:property value="#mb.email"/></td>
					<td><s:property value="#mb.level"/></td>
					
					<td>
						<a href="<s:url action="memberDelete"><s:param name="id"><s:property value="#mb.id"/></s:param>
						</s:url>">删除</a>
					</td>
					<td>
						<a href="<s:url action="memberShow"><s:param name="id"><s:property value="#mb.id"/></s:param>
						</s:url>">修改</a>
					</td>
				</tr>
			</s:iterator>
	</table>
	<a href="register.jsp">返回注册页面</a>
</body>
</html>