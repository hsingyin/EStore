<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
	String jsUrl=request.getContextPath()+"/public/js/";
	String cssUrl=request.getContextPath()+"/public/css/";
	String imgUrl=request.getContextPath()+"/public/img/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>。。</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">

<link href="<%=cssUrl%>index.css" rel="stylesheet">

<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>
<%@ include file="/commons/queryCondition.jsp" %>
</head>
<body>
	<%@ include file="/commons/header.jsp"%>
	<center>
		<br><br>
		<h4>User: ${user.username }</h4>
		
		<br><br>
			<table>
				<c:forEach items="${user.trades }" var="trade">
					
					<tr>
					<td>
					<table border="1" cellpadding="10" cellspacing="0">
					
						<tr>
							<td colspan="3">TradTime: ${trade.tradeTime }</td>
						</tr>
		
						<c:forEach items="${trade.items }" var="item">
							
							<tr>
								<td>${item.computer.model }</td>
								<td>${item.computer.price }</td>
								<td>${item.quantity }</td>
							</tr>
							
						</c:forEach>
						
					</table>
					<br><br>
					</td>
					</tr>
					
				</c:forEach>
			</table>
		
	</center>
	<%@ include file="/commons/footer.jsp"%>
</body>
</html>