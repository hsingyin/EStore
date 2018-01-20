package com.xmut.estore.domain;

import com.xmut.estore.domain.Computer;

/**
 * 封装了购物车中的商品, 包含对商品的引用以及购物车中该商品的数量
 *
 */
public class ShoppingCartItem {

	private Computer computer;
	private int quantity;
	
	public ShoppingCartItem(Computer computer) {
		this.computer = computer;
		this.quantity = 1;
	}
	
	public Computer getComputer() {
		return computer;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	/**
	 * 返回该商品在购物车中的钱数
	 * @return
	 */
	public float getItemMoney(){
		return computer.getPrice() * quantity;
	}
	
	/**
	 * 使商品数量 + 1
	 */
	public void increment(){
		quantity++;
	}
	
	
}
