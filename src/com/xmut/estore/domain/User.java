package com.xmut.estore.domain;

import java.util.LinkedHashSet;
import java.util.Set;

public class User {

	private Integer userId;
	private String username;
	private int accountId;
	 
	private Set<Trade> trades = new LinkedHashSet<Trade>();

	public void setTrades(Set<Trade> trades) {
		this.trades = trades;
	}
	
	public Set<Trade> getTrades() {
		return trades;
	}
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getAccountId() {
		return accountId;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username
				+ ", accountId=" + accountId + "]";
	}

	public User(Integer userId, String username, int accountId) {
		super();
		this.userId = userId;
		this.username = username;
		this.accountId = accountId;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}
}
