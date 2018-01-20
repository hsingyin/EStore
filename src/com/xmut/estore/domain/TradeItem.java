package com.xmut.estore.domain;

import com.xmut.estore.domain.Computer;

public class TradeItem {

	private Integer tradeItemId;
	
	//和 TradeItem 关联的 Computer
	private Computer computer;
	
	private int quantity;
	
	//和 TradeItem 关联的 Computer 的 computerId
	private Integer computerId;

	private Integer tradeId;

	public void setComputer(Computer computer) {
		this.computer = computer;
	}
	
	public Computer getComputer() {
		return computer;
	}
	
	public Integer getTradeItemId() {
		return tradeItemId;
	}

	public void setTradeItemId(Integer tradeItemId) {
		this.tradeItemId = tradeItemId;
	}

	public Integer getComputerId() {
		return computerId;
	}

	public void setComputerId(Integer computerId) {
		this.computerId = computerId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Integer getTradeId() {
		return tradeId;
	}

	public void setTradeId(Integer tradeId) {
		this.tradeId = tradeId;
	}

	public TradeItem(Integer tradeItemId, Integer computerId, int quantity,
			Integer tradeId) {
		super();
		this.tradeItemId = tradeItemId;
		this.computerId = computerId;
		this.quantity = quantity;
		this.tradeId = tradeId;
	}
	
	public TradeItem() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "TradeItem [tradeItemId=" + tradeItemId + ", quantity="
				+ quantity + ", computerId=" + computerId + "]";
	}
	
	

}
