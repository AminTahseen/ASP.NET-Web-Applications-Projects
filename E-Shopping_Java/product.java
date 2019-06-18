package edu.cs.web.model;

import java.util.Date;

public class product {
	String code;
	Date create_date;
	byte[] Image;
	String Name;
	double Price;
	
	public product() {
		
	}

	public product(String code, Date create_date, byte[] image, String name, double price) {
		this.code = code;
		this.create_date = create_date;
		this.Image = image;
		this.Name = name;
		this.Price = price;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public byte[] getImage() {
		return Image;
	}

	public void setImage(byte[] image) {
		Image = image;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double price) {
		Price = price;
	}
	
	
}
