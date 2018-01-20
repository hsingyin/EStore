package com.xmut.estore.domain;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.xmut.estore.domain.Computer;
import com.xmut.estore.domain.ShoppingCartItem;

public class ShoppingCart {
	
	private Map<Integer, ShoppingCartItem> computers = new HashMap<>();
	
	/**
	 * 修改指定购物项的数量
	 */
	public void updateItemQuantity(Integer id, int quantity){
		ShoppingCartItem sci =computers.get(id);
		if(sci != null){
			sci.setQuantity(quantity);
		}
	}
	
	/**
	 * 移除指定的购物项
	 * @param id
	 */
	public void removeItem(Integer id){
		computers.remove(id);
	}
	
	/**
	 * 清空购物车
	 */
	public void clear(){
		computers.clear();
	}
	
	/**
	 * 返回购物车是否为空
	 * @return
	 */
	public boolean isEmpty(){
		return computers.isEmpty();
	}
	
	/**
	 * 获取购物车中所有的商品的总的钱数
	 * @return
	 */
	public float getTotalMoney(){
		float total = 0;
		
		for(ShoppingCartItem sci: getItems()){
			total += sci.getItemMoney();
		}
		
		return total;
	}
	
	/**
	 * 获取购物车中的所有的 ShoppingCartItem 组成的集合
	 * @return
	 */
	public Collection<ShoppingCartItem> getItems(){
		return computers.values();
	}
	
	/**
	 * 返回购物车中商品的总数量
	 * @return
	 */
	public int getComputerNumber(){
		int total = 0;
		
		for(ShoppingCartItem sci: computers.values()){
			total += sci.getQuantity();
		}
		
		return total;
	}
	
	public Map<Integer, ShoppingCartItem> getComputers() {
		return computers;
	}
	
	/**
	 * 检验购物车中是否有 id 指定的商品		
	 * @param id
	 * @return
	 */
	public boolean hasComputer(Integer id){
		return computers.containsKey(id);
	}		
			
	/**
	 * 向购物车中添加一件商品		
	 * @param computer
	 */
	public void addComputer(Computer computer){
		//1. 检查购物车中有没有该商品, 若有, 则使其数量 +1, 若没有, 
		//新创建其对应的 ShoppingCartItem, 并把其加入到 computers 中
		ShoppingCartItem sci = computers.get(computer.getId());
		
		if(sci == null){
			sci = new ShoppingCartItem(computer);
			computers.put(computer.getId(), sci);
		}else{
			sci.increment();
		}
	}
}
