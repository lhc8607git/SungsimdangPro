package persistence;

import java.util.ArrayList;

import domain.Member;
import domain.Order;

public interface IOrder {
	ArrayList<Order> getOrderList(String memb_code) throws Exception;
	
	int getTotalPay(String memb_code) throws Exception;
	

}
