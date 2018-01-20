package com.xmut.estore.dao;

import java.util.Collection;
import java.util.List;

import com.xmut.estore.domain.Computer;
import com.xmut.estore.domain.ShoppingCartItem;
import com.xmut.estore.web.CriteriaComputer;
import com.xmut.estore.web.Page;



public interface ComputerDAO {

	/**
	 * 根据 id 获取指定 Computer 对象
	 * @param id
	 * @return
	 */
	public abstract Computer getComputer(int id);

	/**
	 * 根据传入的 CriteriaComputer 对象返回对应的 Page 对象
	 * @param cc
	 * @return
	 */
	public abstract Page<Computer> getPage(CriteriaComputer cc);

	/**
	 * 根据传入的 CriteriaComputer 对象返回其对应的记录数
	 * @param cc
	 * @return
	 */
	public abstract long getTotalComputerNumber(CriteriaComputer cc);

	/**
	 * 根据传入的 CriteriaComputer 和 pageSize 返回当前页对应的 List 
	 * @param cc
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract List<Computer> getPageList(CriteriaComputer cc,int pageSize);

	/**
	 * 返回指定 id 的 book 的 storeNumber 字段的值
	 * @param id
	 * @return
	 */
	public abstract int getStoreNumber(Integer id);

	/**
	 * 根据传入的 ShoppingCartItem 的集合, 
	 * 批量更新computers 数据表的 storenumber 和 salesnumber 字段的值
	 * @param items
	 */
	public abstract void batchUpdateStoreNumberAndSalesAmount(
			Collection<ShoppingCartItem> items);
	/**
	 * 
	 * 获取数据库的Computer图片的URL
	 */
	public abstract String getComputerImgUrl(int id);
		
	

}