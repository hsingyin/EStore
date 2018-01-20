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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>estore百脑汇--只卖正品，顺丰包邮</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">

<link href="<%=cssUrl%>index.css" rel="stylesheet">

<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>

<script type="text/javascript">
	
	$(function(){
		
		$("#pageNo").change(function(){
			var val = $(this).val();
			val = $.trim(val);
			
			//1. 校验 val 是否为数字 1, 2, 而不是 a12, b
			var flag = false;
			var reg = /^\d+$/g;
			var pageNo = 0;
			
			if(reg.test(val)){
				//2. 校验 val 在一个合法的范围内： 1-totalPageNumber
				pageNo = parseInt(val);
				if(pageNo >= 1 && pageNo <= parseInt("${computerpage.totalPageNumber }")){
					flag = true;
				}
			}
			
			
			if(!flag){
				
				$(".alert").alert();
				$(this).val("");
				return;
			}
			
			//3. 页面跳转
			var href = "computerServlet?method=getComputers&pageNo=" + pageNo + "&" + $(":hidden").serialize();
			window.location.href = href;
		});
	})
	
</script>
<script type="text/javascript">

$(function(){
  $("#back-to-top").click(function() {
      $("html,body").animate({scrollTop:0}, 500);
  }); 
 })

</script>
<%@ include file="/commons/queryCondition.jsp" %>
</head>
<body>
		<%@ include file="/commons/header.jsp"%>
		
		
	
	
		<div class="container tips">
			<c:if test="${param.model != null}">
			
				<div class="alert alert-success tip-success"> 
	   				<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	   				<strong>成功！</strong>您已经将 <b>${param.brand } ${param.model} </b>加入到购物车中!
	   				<b><a href="computerServlet?method=forwardPage&page=cart&pageNo=${computerpage.pageNo }">立即查看购物车</a></b>
	  			</div> 
				
			</c:if>
			
		</div>
	

		
			<div class="container searchBox">
				<form action="computerServlet?method=getComputers" method="post" class="form-inline">
					<div class="form-group">
						<div >
						    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
						    <div class="input-group">
						      <div class="input-group-addon">从</div>
						      <input type="text" class="form-control col-xs-1" name="minPrice" placeholder="最低价格"/>
						      <div class="input-group-addon">到</div>
						      <input type="text" class="form-control col-xs-1" name="maxPrice" placeholder="最高价格"/>
						    </div>
						  </div>
					 </div>
  					<button type="submit" class="btn btn-primary searchBtn "><span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查询</button>
				</form>
			</div>
		 	<div class="container">
					<div class="container">
					<c:forEach items="${computerpage.list }" var="computer">
					
						
						  <div class="col-sm-6 col-md-4">
							  <a href="computerServlet?method=getComputer&pageNo=${computerpage.pageNo }&id=${computer.id}" >
							  		<div class="thumbnail">
								      <img src="${computer.url }" alt="...">
								      <div class="caption">
								        <h3 style="color:black;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;">${computer.brand }&nbsp;${computer.model }</h3>
								        <p class="prcieNum">￥ ${computer.price }</p>
								        <p>
								        	<a href="computerServlet?method=addToCart&pageNo=${computerpage.pageNo }&id=${computer.id}&model=${computer.model}&brand=${computer.brand}" class="btn btn-primary addToCart" role="button"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 加入购物车</a> 
								        	<a href="#" class="btn btn-default" role="button"> <span class="glyphicon glyphicon-star" aria-hidden="true" style="color:#FF8F1C;"></span> 收藏</a>
						        		</p>
						      		 </div>
						    		</div>
							  </a>
							    
						  </div>
						
					</c:forEach>
					</div>
				
		
					<div class="container">
						共 <span class="badge">${computerpage.totalPageNumber }</span> 页
					&nbsp;&nbsp;
					当前第 <span class="badge">${computerpage.pageNo } </span> 页		
					&nbsp;&nbsp;
					
					<c:if test="${computerpage.hasPrev }">
						<a class="btn btn-default" role = "button" href="computerServlet?method=getComputers&pageNo=1">首页</a>
						&nbsp;&nbsp;
						<a class="btn btn-default" role = "button" href="computerServlet?method=getComputers&pageNo=${computerpage.prevPage }">上一页</a>
					</c:if>
			
					&nbsp;&nbsp;
					
					<c:if test="${computerpage.hasNext }">
						<a class="btn btn-default" role = "button" href="computerServlet?method=getComputers&pageNo=${computerpage.nextPage }">下一页</a>
						&nbsp;&nbsp;
						<a class="btn btn-default" role = "button" href="computerServlet?method=getComputers&pageNo=${computerpage.totalPageNumber }">末页</a>
					</c:if>
					
					&nbsp;&nbsp;
					
					转到 <input  type="text" size="1" id="pageNo"  data-dismiss="alert" aria-label="Close"/> 页	
					</div>
					
			
		</div>
		<%@ include file="/commons/footer.jsp"%>
		
			

	
</body>
</html>