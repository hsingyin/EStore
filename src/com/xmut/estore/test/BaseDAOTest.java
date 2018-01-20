package com.xmut.estore.test;

import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.Test;
import java.sql.Date;
import java.util.List;

import com.xmut.estore.dao.impl.BaseDAO;
import com.xmut.estore.dao.impl.ComputerDAOImpl;
import com.xmut.estore.domain.Computer;

class BaseDAOTest {
	
	
	private ComputerDAOImpl computerDAOImpl = new ComputerDAOImpl();
	private BaseDAO baseDAO = new BaseDAO();
	@Test
	void testInsert() {
		String sql = "INSERT INTO trade (userid,tradetime) VALUES(?,?)";
		long id = computerDAOImpl.insert(sql, 1,new Date(new java.util.Date().getTime()));
		System.out.println(id);
	}

	@Test
	void testUpdate() {

		String sql = "UPDATE mycomputers SET salesAmount = ? WHERE id = ?";
		computerDAOImpl.update(sql, 100, 4);
		
	}

	@Test
	void testQuery() {
		String sql = "SELECT id,brand,model,price,publishingDate"+
				"salesAmount,storeNumber,remark FROM mycomputers WHERE id = ?";
		Computer computer = computerDAOImpl.query(sql, 6);
		System.out.println(computer);
	}

	@Test
	void testQueryForList() {
		String sql = "SELECT id,brand,model,price,publishingDate"+
				"salesAmount,storeNumber,remark FROM mycomputers WHERE id < ?";
		List<Computer> computers = computerDAOImpl.queryForList(sql, 4);
		System.out.println(computers);
	}

	@Test
	void testGetSingleVal() {
		String sql = "SELECT count(id) FROM mycomputers";
		long count = computerDAOImpl.getSingleVal(sql);
		System.out.println(count);
	}

	@Test
	void testBatch() {
		String sql = "UPDATE mycomputers "+
				"SET salesAmount = ?, storeNumber = ? WHERE id = ?";
		computerDAOImpl.batch(sql, new Object[]{1,1,1},new Object[]{2,2,2},new Object[]{3,3,3});
	}

}
