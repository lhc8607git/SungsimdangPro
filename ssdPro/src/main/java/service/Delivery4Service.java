package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductDTO;
import persistence.ProductDAO;

public class Delivery4Service {

	private Delivery4Service() {}

	private static Delivery4Service instance = new Delivery4Service();

	public static Delivery4Service getInstance() {
		return instance;
	}
	
	public List<ProductDTO> select() throws Exception{
		
		Connection con = null;
		List<ProductDTO> delilist = null;

 		try {
			con = ConnectionProvider.getConnection();
			ProductDAO dao = ProductDAO.getInstance();
			delilist = dao.deliveryList(con, null);

			return delilist;
		} catch (SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con);
		}
		return delilist;
	}
}