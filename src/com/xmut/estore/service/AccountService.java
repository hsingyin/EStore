package com.xmut.estore.service;

import com.xmut.estore.dao.AccountDAO;
import com.xmut.estore.dao.impl.AccountDAOIml;
import com.xmut.estore.domain.Account;

public class AccountService {
	
	private AccountDAO accountDAO = new AccountDAOIml();
	
	public Account getAccount(int accountId){
		return accountDAO.get(accountId);
	}
	
}
