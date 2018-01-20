package com.xmut.estore.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.xmut.estore.dao.ComputerDAO;
import com.xmut.estore.dao.impl.ComputerDAOImpl;
import com.xmut.estore.domain.Computer;
import com.xmut.estore.web.CriteriaComputer;
import com.xmut.estore.web.Page;

class ComputerDAOTest {
	private ComputerDAO computerDAO = new ComputerDAOImpl();
	
	@Test
	void testGetComputer() {
		Computer computer = computerDAO.getComputer(1);
		System.out.println(computer);
	}

	@Test
	void testGetPage() {
		CriteriaComputer cc = new CriteriaComputer(0, Integer.MAX_VALUE, 3);
		Page<Computer> page = computerDAO.getPage(cc);
		
		System.out.println("pageNo: "+ page.getPageNo());
		System.out.println("totalPageNumber: "+page.getTotalPageNumber());
		System.out.println("list: "+page.getList());
		System.out.println("prevPage: "+page.getPrevPage());
		System.out.println("nextPage: "+page.getNextPage());
		
	}

	@Test
	void testGetTotalComputerNumber() {
		fail("Not yet implemented");
	}

	@Test
	void testGetPageList() {
		fail("Not yet implemented");
	}

	@Test
	void testGetStoreNumber() {
		int storeNumber = computerDAO.getStoreNumber(5);
		System.out.println(storeNumber);
	}
	@Test
	void testGetComputerImgUrl() {
		String url = computerDAO.getComputerImgUrl(1);
		System.out.println(url);
		
	}
	@Test
	void testBatchUpdateStoreNumberAndSalesAmount() {
		fail("Not yet implemented");
	}

}
