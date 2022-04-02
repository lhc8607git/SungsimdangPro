package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import domain.Order;

public class OrderDAO implements IOrder {

	@Override
	public ArrayList<Order> getOrderList(String memb_code) throws Exception {
		String sql = 
				"SELECT * "
				+ "FROM prdOrder "
				+ "WHERE memb_code = ?";
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, memb_code);
		ResultSet rs = psmt.executeQuery();
		ArrayList<Order> list = new ArrayList<>();
		
		while (rs.next()) {
			Order order = new Order();
			order.setOrderCode(rs.getString(1));
			order.setPrdCode(rs.getString(2));
			order.setDeslistCode(rs.getString(4));
			order.setExchcouponCode(rs.getString(5));
			order.setCartCode(rs.getString(6));
			order.setHcouponCode(rs.getString(7));
			order.setOrderDate(rs.getDate(8));
			order.setOrderPrice(rs.getInt(9));
			order.setDiscountPrice(rs.getInt(10));
			order.setTotalpaymentPrice(rs.getInt(11));
			order.setShippingState(rs.getString(12));
			order.setPaymentOption(rs.getString(13));
			order.setReservePrice(rs.getInt(14));
			order.setShippingwishDate(rs.getDate(15));
			order.setShippingTime(rs.getString(16));
			order.setRequestOrder(rs.getString(17));
			list.add(order);
			System.out.println(order);
		}
		return list;
	}

	@Override
	public int getTotalPay(String memb_code) throws Exception {
		String sql = 
				"SELECT sum(order_price) "
				+ "FROM prdOrder "
				+ "WHERE memb_code = ?";
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, memb_code);
		ResultSet rs = psmt.executeQuery();
		rs.next();
		return rs.getInt(1);
	}
}