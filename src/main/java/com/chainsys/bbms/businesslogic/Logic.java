package com.chainsys.bbms.businesslogic;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.chainsys.bbms.model.BloodDonationDetail;
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
	public static boolean UnEligibilityForDonation(Date appointmentDate,Date priviousDonationDate) 
	{
        
		long milseconds=appointmentDate.getTime()-priviousDonationDate.getTime();
		long days=milseconds/(1000*60*60*24);
		if(days>180)
			return false;
		else return true;
	}
	
}
