package edu.cs.web.model;

public class order_detail {
String order_detail_id;
double amount;
double price;
int quantity;
String order_id;
String product_id;
public order_detail(String order_detail_id, double amount, double price, int quantity, String order_id,
		String product_id) {
	this.order_detail_id = order_detail_id;
	this.amount = amount;
	this.price = price;
	this.quantity = quantity;
	this.order_id = order_id;
	this.product_id = product_id;
}
public String getOrder_detail_id() {
	return order_detail_id;
}
public void setOrder_detail_id(String order_detail_id) {
	this.order_detail_id = order_detail_id;
}
public double getAmount() {
	return amount;
}
public void setAmount(double amount) {
	this.amount = amount;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getOrder_id() {
	return order_id;
}
public void setOrder_id(String order_id) {
	this.order_id = order_id;
}
public String getProduct_id() {
	return product_id;
}
public void setProduct_id(String product_id) {
	this.product_id = product_id;
}


}
