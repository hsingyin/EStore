<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
	String jsUrl=request.getContextPath()+"/public/js/";
	String cssUrl=request.getContextPath()+"/public/css/";
	String imgUrl=request.getContextPath()+"/public/img/";
	String flieUrl = request.getContextPath()+"/WEB-INF/pages/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结账</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">

<link href="<%=cssUrl%>index.css" rel="stylesheet">

<link href="<%=cssUrl%>bootstrapValidator.min.css" rel="stylesheet" />
 
<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>


<%@ include file="/commons/queryCondition.jsp" %>
</head>
<body>
	<%@ include file="/commons/header.jsp"%>
	
	<div class="container">
		<br><br>
		
		<br>
		
		<div class="alert alert-info tip-success"> 
	   				
	   				您一共买了 <b>${sessionScope.ShoppingCart.computerNumber } </b>件商品
	   				应付: <b>￥ ${ sessionScope.ShoppingCart.totalMoney}</b>
	   				
	  	</div> 
		
		
		<c:if test="${requestScope.errors != null }">
			<div class="alert alert-danger text-center">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<b>${requestScope.errors }</b>
			</div>
			
		</c:if>
		
		
		<div class="container" >
			<form class="form-signin" action="computerServlet?method=cash" method="post" style="width:330px;margin:0 auto;">
	        	<h2 class="form-signin-heading">请用信用卡完成支付！</h2>
	        	<label for="inputEmail" class="sr-only">信用卡姓名</label>
	        	<input type="text"  name="username" class="form-control" style="margin-top:10px;margin-bottom: 20px;"placeholder="信用卡姓名" required="" autofocus="">
	        	<label for="inputPassword" class="sr-only">信用卡账号</label>
	        	<input type="text" id="inputPassword" name="accountId" class="form-control" placeholder="信用卡账号" required="">
	        	
	        	<button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top:20px;">确认支付</button>
      		</form>
		</div>
		
	</div>
		
		
	
	<%@ include file="/commons/footer.jsp"%>
</body>
</html>