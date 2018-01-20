<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="navbar navbar-default navbar-static-top">
	      <div class="container">
		        <div class="navbar-header">
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="computerServlet?method=getComputers"><span class="glyphicon glyphicon-blackboard"></span> EStore百脑汇</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
		          <ul class="nav navbar-nav">
		            <li class="active"><a href="computerServlet?method=getComputers">首页</a></li>
		            <li><a href="#about">关于</a></li>
		            <li><a href="#contact">联系我们</a></li>
		          </ul>
		          <ul class="nav navbar-nav navbar-right">
      				<li role="presentation" ><a href="computerServlet?method=forwardPage&page=cart&pageNo=${computerpage.pageNo }"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>&nbsp;购物车&nbsp;<span class="badge">${sessionScope.ShoppingCart.computerNumber }</span></a></li>
        		
	       	 		<li class="dropdown">
		          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;admin<span class="caret"></span></a>
		          		<ul class="dropdown-menu">
				            <li><a href="#">我的账号</a></li>
				            <li><a href="#">我的订单</a></li>
				            <li><a href="#">账号余额</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="#">退出</a></li>
		          		</ul>
	        		</li>
      			  </ul>
		        </div><!--/.nav-collapse -->
	      </div>
    	</nav>