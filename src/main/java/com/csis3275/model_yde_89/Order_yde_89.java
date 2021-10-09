package com.csis3275.model_yde_89;

public class Order_yde_89 {

	protected String name;
	protected String email;
	protected String dob;
	protected double price;
	protected double tipRate;
	protected double total;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getTipRate() {
		return tipRate;
	}
	public void setTipRate(double tipRate) {
		this.tipRate = tipRate;
	}
	
	public double calculateTax() {
		return price * 0.12;
	}
	
	public double calculateTip() {
		return price * ( tipRate / 100);
	}
	
	public double calculateTotal() {
		return price + calculateTax() + calculateTip();
	}
	
	@Override
	public String toString() {
		return "<br>Name:" + name + "<br>Email:" + email + "<br>Birthday:" + dob;
	}
}
