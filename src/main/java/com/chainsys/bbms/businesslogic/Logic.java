package com.chainsys.bbms.businesslogic;

public class Logic {
	public static int addQuantity(int stock,int addInStock) {
		return stock+addInStock;
	}
	public static int reduceQuantity(int stock,int reduceInStock) {
		return stock-reduceInStock;
	}
}
