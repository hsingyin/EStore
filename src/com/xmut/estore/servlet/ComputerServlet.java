package com.xmut.estore.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xmut.estore.domain.ShoppingCart;
import com.xmut.estore.web.EStoreWebUtils;
import com.xmut.estore.service.UserService;
import com.xmut.estore.domain.Account;
import com.xmut.estore.domain.ShoppingCartItem;
import com.xmut.estore.domain.User;
import com.xmut.estore.service.AccountService;
import com.xmut.estore.web.EStoreWebUtils;
import com.google.gson.Gson;
import com.xmut.estore.domain.Computer;
import com.xmut.estore.service.ComputerService;
import com.xmut.estore.web.CriteriaComputer;
import com.xmut.estore.web.Page;

public class ComputerServlet extends HttpServlet {
	
	private ComputerService  computerService = new ComputerService();
	
	private UserService userService = new UserService();
	
	private AccountService accountService = new AccountService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	
	
	//method反射机制调用方法
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String methodName = request.getParameter("method");
		
		try {
			// 利用反射获取方法
			Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			// 执行相应的方法
			method.setAccessible(true);
			method.invoke(this, request,response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void cash(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 简单验证: 验证表单域的值是否符合基本的规范: 是否为空, 是否可以转为 int 类型, 是否是一个 email. 不需要进行查询
		//数据库或调用任何的业务方法.
		String username = request.getParameter("username");
		String accountId = request.getParameter("accountId");
		
		StringBuffer errors = validateFormField(username, accountId);
		
		//表单验证通过。 
		if(errors.toString().equals("")){
			errors = validateUser(username, accountId);
			
			//用户名和账号验证通过
			if(errors.toString().equals("")){
				errors = validateComputerStoreNumber(request);
				
				//库存验证通过
				if(errors.toString().equals("")){
					errors = validateBalance(request, accountId);
				}
			}
		}
		
		if(!errors.toString().equals("")){
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("/WEB-INF/pages/cash.jsp").forward(request, response);
			return;
		}
		
		//验证通过执行具体的逻辑操作
		computerService.cash(EStoreWebUtils.getShoppingCart(request), username, accountId); 
		response.sendRedirect(request.getContextPath() + "/success.jsp");
	}
	
	
	
	//验证余额是否充足
	public StringBuffer validateBalance(HttpServletRequest request, String accountId){
		
		StringBuffer errors = new StringBuffer("");
		ShoppingCart cart = EStoreWebUtils.getShoppingCart(request);
		
		Account account = accountService.getAccount(Integer.parseInt(accountId));
		if(cart.getTotalMoney() > account.getBalance()){
			errors.append("余额不足!");
		}
		
		return errors;
	}
	
	//验证库存是否充足
	public StringBuffer validateComputerStoreNumber(HttpServletRequest request){
		
		StringBuffer errors = new StringBuffer("");
		ShoppingCart cart = EStoreWebUtils.getShoppingCart(request);
		
		for(ShoppingCartItem sci: cart.getItems()){
			int quantity = sci.getQuantity();
			int storeNumber = computerService.getComputer(sci.getComputer().getId()).getStoreNumber();
			
			if(quantity > storeNumber){
				errors.append(sci.getComputer().getBrand()+sci.getComputer().getModel() + "库存不足<br>");
			}
		}
		
		return errors;
	}
	
	//验证用户名和账号是否匹配
	public StringBuffer validateUser(String username, String accountId){
		boolean flag = false;
		User user = userService.getUserByUserName(username);
		if(user != null){
			int accountId2 = user.getAccountId();
			if(accountId.trim().equals("" + accountId2)){
				flag = true;
			}
		}
		
		StringBuffer errors2 = new StringBuffer("");
		if(!flag){
			errors2.append("用户名和账号不匹配");
		}
		
		return errors2;
	}
	
	//验证表单域是否符合基本的规则: 是否为空. 
	public StringBuffer validateFormField(String username, String accountId){
		StringBuffer errors = new StringBuffer("");
		
		if(username == null || username.trim().equals("")){
			errors.append("用户名不能为空<br>");
		}
		
		if(accountId == null || accountId.trim().equals("")){
			errors.append("账号不能为空");			
		}
		
		return errors;
	}

	protected void updateItemQuantity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//4. 在 updateItemQuantity 方法中, 获取 quanity, id, 再获取购物车对象, 调用 service 的方法做修改
		String idStr = request.getParameter("id");
		String quantityStr = request.getParameter("quantity");
		
		ShoppingCart sc = EStoreWebUtils.getShoppingCart(request);
		
		int id = -1;
		int quantity = -1;
		
		try {
			id = Integer.parseInt(idStr);
			quantity = Integer.parseInt(quantityStr);
		} catch (Exception e) {}
		
		if(id > 0 && quantity > 0)
			computerService.updateItemQuantity(sc, id, quantity);
		
		//5. 传回 JSON 数据: computerNumber:xx, totalMoney
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("computerNumber", sc.getComputerNumber());
		result.put("totalMoney", sc.getTotalMoney());
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(result);
		response.setContentType("text/javascript");
		response.getWriter().print(jsonStr);
	}
	protected void remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("id");
		
		int id = -1;
		boolean flag = false;
		try {
			id = Integer.parseInt(idStr);
		} catch (Exception e) {}
		
		ShoppingCart sc = EStoreWebUtils.getShoppingCart(request);
		computerService.removeItemFromShoppingCart(sc, id);
		
		if(sc.isEmpty()){
			request.getRequestDispatcher("/WEB-INF/pages/emptycart.jsp").forward(request, response);
			return;
		}
		
		request.getRequestDispatcher("/WEB-INF/pages/cart.jsp").forward(request, response);
		
	}
	protected void clear(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ShoppingCart sCart = EStoreWebUtils.getShoppingCart(request);
		computerService.clearShoppingCart(sCart);
		request.getRequestDispatcher("/WEB-INF/pages/emptycart.jsp").forward(request, response);
	}

	//跳转页面
	protected void forwardPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		request.getRequestDispatcher("/WEB-INF/pages/" + page + ".jsp").forward(request, response);
	}
	//添加到购物车
	protected void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 获取商品的 id
		String idStr = request.getParameter("id");
		int id = -1;
		boolean flag = false;
		
		try {
			id = Integer.parseInt(idStr);
		} catch (Exception e) {}
		
		if(id > 0){
			//2. 获取购物车对象
			ShoppingCart sc = EStoreWebUtils.getShoppingCart(request);
			
			//3. 调用 ComputerService 的 addToCart() 方法把商品放到购物车中
			flag = computerService.addToCart(id, sc);
		}
		
		if(flag){
			//4. 直接调用 getComputers() 方法. 
			getComputers(request, response);
			return;
		}
		
		response.sendRedirect(request.getContextPath() + "/error-1.jsp");
	}
	//添加到购物车（商品详情页添加）
	protected void addToCartInside(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 获取商品的 id
		String idStr = request.getParameter("id");
		int id = -1;
		boolean flag = false;
		
		try {
			id = Integer.parseInt(idStr);
		} catch (Exception e) {}
		
		if(id > 0){
			//2. 获取购物车对象
			ShoppingCart sc = EStoreWebUtils.getShoppingCart(request);
			
			//3. 调用 ComputerService 的 addToCart() 方法把商品放到购物车中
			flag = computerService.addToCart(id, sc);
		}
		
		if(flag){
			//4. 直接调用 getComputer() 方法. 
			getComputer(request, response);
			return;
		}
		
		response.sendRedirect(request.getContextPath() + "/error-1.jsp");
	}
	protected void getComputer(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		String idStr = request.getParameter("id");
		int id = -1;
		Computer computer = null;
		
		try {
			id = Integer.parseInt(idStr);
		} catch (NumberFormatException e) {}
		if (id > 0) {
			computer = computerService.getComputer(id);
		}
		
		if (computer == null) {
			response.sendRedirect(request.getContextPath()+"/error-1.jsp");
			return;
		}
		request.setAttribute("computer", computer);
		request.getRequestDispatcher("/WEB-INF/pages/computer.jsp").forward(request, response);
	}
	protected void getComputers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageNoStr = request.getParameter("pageNo");
		String minPriceStr = request.getParameter("minPrice");
		String maxPriceStr = request.getParameter("maxPrice");
		
		
		int pageNo = 1;
		int minPrice = 0;
		int maxPrice = Integer.MAX_VALUE;
		
		try {
			pageNo = Integer.parseInt(pageNoStr);
		} catch (NumberFormatException e) {}
		
		try {
			minPrice = Integer.parseInt(minPriceStr);
		} catch (NumberFormatException e) {}
		
		try {
			maxPrice = Integer.parseInt(maxPriceStr);
		} catch (NumberFormatException e) {}
		
		CriteriaComputer criteriaComputer = new CriteriaComputer(minPrice, maxPrice, pageNo);
		Page<Computer> page = computerService.getPage(criteriaComputer);
		
		request.setAttribute("computerpage", page);
		request.getRequestDispatcher("/WEB-INF/pages/computers.jsp").forward(request, response);
	}
	

}
