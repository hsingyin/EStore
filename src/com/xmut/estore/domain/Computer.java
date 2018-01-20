package com.xmut.estore.domain;

import java.sql.Date;

public class Computer {
	private Integer id;
	
	private String brand;
	
	private String model;
	
	private float price;
	
	private Date publishingDate;

	private int salesAmount;
	
	private int storeNumber;
	
	private String remark;
	
	private String url;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Date getPublishingDate() {
		return publishingDate;
	}
	public void setPublishingDate(Date publishingDate) {
		this.publishingDate = publishingDate;
	}
	public int getSalesAmount() {
		return salesAmount;
	}
	public void setSalesAmount(int salesAmount) {
		this.salesAmount = salesAmount;
	}
	public int getStoreNumber() {
		return storeNumber;
	}
	public void setStoreNumber(int storeNumber) {
		this.storeNumber = storeNumber;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Computer [id=" + id + ", brand=" + brand + ", model=" + model + ", price=" + price + ", publishingDate="
				+ publishingDate + ", salesAmount=" + salesAmount + ", storeNumber=" + storeNumber + ", remark="
				+ remark + ", url=" + url + "]"+"/n";
	}
	
	
	
}
