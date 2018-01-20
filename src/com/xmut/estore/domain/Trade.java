package com.xmut.estore.domain;

import java.sql.Date;
import java.util.LinkedHashSet;
import java.util.Set;

import com.xmut.estore.domain.TradeItem;

public class Trade {

	//Trade 对象对应的 id
	private Integer tradeId;
	
	//交易的时间
	private Date tradeTime;

	//Trade 关联的多个 TradeItem
	private Set<TradeItem> items = new LinkedHashSet<TradeItem>();
	
	public void setItems(Set<TradeItem> items) {
		this.items = items;
	}
	
	public Set<TradeItem> getItems() {
		return items;
	}

	//和 Trade 关联的 User 的 userId
	private Integer userId;
	
	public Integer getTradeId() {
		return tradeId;
	}

	public void setTradeId(Integer tradeId) {
		this.tradeId = tradeId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getTradeTime() {
		return tradeTime;
	}

	public void setTradeTime(Date tradeTime) {
		this.tradeTime = tradeTime;
	}

	@Override
	public String toString() {
		return "Trade [tradeId=" + tradeId + ", tradeTime=" + tradeTime
				+ ", userId=" + userId + "]";
	}
}

