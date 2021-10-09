package com.csis3275.model_yde_89;

public class Pizza_yde_89 extends Order_yde_89{
	
	private int pizzaType;
	private String pizzaName;
	private int pizzaSize;
	private String pizzaSizeCrust;
	private String[] toppingList;

	public int getPizzaType() {
		return pizzaType;
	}

	public void setPizzaType(int pizzaType) {
		this.pizzaType = pizzaType;
	}
	
	public int getPizzaSize() {
		return pizzaSize;
	}

	public void setPizzaSize(int pizzaSize) {
		this.pizzaSize = pizzaSize;
	}
	
	public String[] getToppingList() {
		return toppingList;
	}

	public void setToppingList(String[] toppingList) {
		this.toppingList = toppingList;
	}

	public void getPizzaInfo() {	
		switch (pizzaType) {
		case 1:
			pizzaName = "Hawaiian";
			price = 22.56;
			break;
		case 2:
			pizzaName = "Pepperoni";
			price = 23.46;
			break;
		case 3:
			pizzaName = "Canadian";
			price = 25.78;
			break;
		case 4:
			pizzaName = "Meat lover\'s";
			price = 26.88;
			break;
		}
	}
	
	public void calculatePizzaPrice() {
		switch (pizzaSize) {
		case 1:
			pizzaSizeCrust = "14\'\' Large Thin";
			price += 5;
			break;
		case 2:
			pizzaSizeCrust = "14\'\' Large Pan";
			price += 5;
			break;
		case 3:
			pizzaSizeCrust = "12\'\' Medium Thin";
			price += 3;
			break;
		case 4:
			pizzaSizeCrust = "12\'\' Medium Pan";
			price += 3;
			break;
		case 5:
			pizzaSizeCrust = "9\'\' Small Thin";
			break;
		case 6:
			pizzaSizeCrust = "9\'\' Small Pan";
			break;
		}
	}
	
	@Override
	public String toString() {
		getPizzaInfo();
		calculatePizzaPrice();
		String result = "Pizza: " + pizzaName + "\t" + pizzaSizeCrust;
		result += "<br>Toppings: ";
		for(String topping: toppingList) {
			result += topping + ", ";
		}
		result += String.format("<br>Price: $%.2f", price)
				+ String.format("<br>Tax: $%.2f", calculateTax()) 
				+ String.format("<br>Tip (%.2f %%", tipRate)
				+ String.format("): $%.2f", calculateTip())
				+ String.format("<br>Total: $%.2f", calculateTotal());
		return result;
	}
}
