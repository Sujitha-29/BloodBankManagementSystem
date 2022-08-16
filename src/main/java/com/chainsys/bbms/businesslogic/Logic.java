package com.chainsys.bbms.businesslogic;

import java.sql.Date;

public class Logic 
{
	public static int addQuantity(int stock,int addInStock)
	{
		return stock+addInStock;
	}
	public static int reduceQuantity(int stock,int reduceInStock) 
	{
		return stock-reduceInStock;
	}
	public static boolean unEligibilityForDonation(Date appointmentDate,Date priviousDonationDate) 
	{
        if(priviousDonationDate==null) {
        	return false;
        }
		long milseconds=appointmentDate.getTime()-priviousDonationDate.getTime();
		long days=milseconds/(1000*60*60*24);
		if(days>180)
		{
			return false;
		}
		else 
		{
			return true;
		}
	}
	
}
