package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.DeliveryDTO;
import domain.ProductDTO;
import persistence.DeliveryDAOImpl;
import persistence.ProductDAOImpl;

public class DeliveryService {

	private DeliveryService() {}

	private static DeliveryService instance = new DeliveryService();
	
	public static DeliveryService getInstance() {
		return instance;
	}
	
	public List<DeliveryDTO> deliveryList(String deli){
		
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			DeliveryDAOImpl dao = DeliveryDAOImpl.getInstance();
			List<DeliveryDTO> deliveryList = null;
			deliveryList = dao.deliveryList(con);

			return deliveryList;
		} catch (NamingException | SQLException e) {
			//e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
