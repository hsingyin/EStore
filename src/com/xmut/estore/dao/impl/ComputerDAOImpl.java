package com.xmut.estore.dao.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.xmut.estore.dao.ComputerDAO;
import com.xmut.estore.domain.Computer;
import com.xmut.estore.domain.ShoppingCartItem;
import com.xmut.estore.web.CriteriaComputer;
import com.xmut.estore.web.Page;

public class ComputerDAOImpl extends BaseDAO<Computer> implements ComputerDAO{

	@Override
	public Computer getComputer(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT id,brand,model,price,publishingDate,"+
				"salesAmount,storeNumber,Remark,Url FROM mycomputers WHERE id = ?";
		
		return query(sql, id);
	}
	//3.
	//将请求条件封装成CriteriaComputer
	@Override
	public Page<Computer> getPage(CriteriaComputer cc) {
		// TODO Auto-generated method stub
		Page<Computer> page = new Page<>(cc.getPageNo());
		
		page.setTotalItemNumber(getTotalComputerNumber(cc));
		//校验pageNo的合法性
		cc.setPageNo(page.getPageNo());
		page.setList(getPageList(cc, 6));
		return page;
	}
	//1.
	@Override
	public long getTotalComputerNumber(CriteriaComputer cc) {
		// TODO Auto-generated method stub
		String sql = "SELECT count(id) FROM mycomputers WHERE price BETWEEN ? AND ?";
		return getSingleVal(sql, cc.getMinPrice(), cc.getMaxPrice());
	}
	/**
	 * 分页逻辑,用LIMIT,从0开始
	 * 
	 */
	//2.
	@Override
	public List<Computer> getPageList(CriteriaComputer cc, int pageSize) {
		// TODO Auto-generated method stub
		String sql = "SELECT id,brand,model,price,publishingDate,"+
				"salesAmount,storeNumber,Remark,Url FROM mycomputers WHERE price BETWEEN ? AND ?"+
				"LIMIT ?,?";
		
		return queryForList(sql, cc.getMinPrice(),cc.getMaxPrice(),(cc.getPageNo() - 1)*pageSize,pageSize);
	}

	@Override
	public int getStoreNumber(Integer id) {
		// TODO Auto-generated method stub
		String sql = "SELECT storeNumber FROM mycomputers WHERE id = ?";
		return getSingleVal(sql, id);
	}
	
	@Override
	public void batchUpdateStoreNumberAndSalesAmount(Collection<ShoppingCartItem> items) {
		// TODO Auto-generated method stub
		String sql = "UPDATE mycomputers SET salesAmount = salesAmount + ?, " +
				"storeNumber = storeNumber - ? " +
				"WHERE id = ?";
		Object [][] params = null;
		params = new Object[items.size()][3];
		List<ShoppingCartItem> scis = new ArrayList<>(items);
		for(int i = 0; i < items.size(); i++){
			params[i][0] = scis.get(i).getQuantity();
			params[i][1] = scis.get(i).getQuantity();
			params[i][2] = scis.get(i).getComputer().getId();
		}
		batch(sql, params);
	}
	@Override
	public String getComputerImgUrl(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT url FROM mycomputers WHERE id=?";
		return getSingleVal(sql, id);
	}
	
}
