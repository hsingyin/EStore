package com.xmut.estore.domain;

public class Account {

	private Integer accountId;
	private int balance;

	public Integer getAccountId() {
		return accountId;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public Account(Integer accountId, int balance) {
		super();
		this.accountId = accountId;
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", balance=" + balance + "]";
	}

	public Account() {
		// TODO Auto-generated constructor stub
	}
}
