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
<title>404错误</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">

<link href="<%=cssUrl%>index.css" rel="stylesheet">

<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>
<%@ include file="/commons/queryCondition.jsp" %>
</head>
<body>
	
	<%@ include file="/commons/header.jsp"%>
		
	<div class="container">
		<div class="jumbotron" style="margin-top:30px;">
  			<h1>404!页面未能够找到</h1>
  			<p>抱歉，页面好像去火星啦！</p>
  			<p><a class="btn btn-primary btn-lg" href="index.jsp" role="button">返回</a></p>
		</div>
	</div>		
	
			
	

	<%@ include file="/commons/footer.jsp"%>
</body>
</html>