package com.xmut.estore.exception;

public class DBException extends RuntimeException {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DBException() {
		// TODO Auto-generated constructor stub
	}
	
	public DBException(String msg) {
		super(msg);
	}
	
	public DBException(String msg, Exception ex) {
		super(msg, ex);
	}
}
