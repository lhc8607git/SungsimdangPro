package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductDTO;
import persistence.ProductDAO;

public class Pickup4Service {

	private Pickup4Service() {}
	private static Pickup4Service instance = new Pickup4Service();
	public static Pickup4Service getInstance() {
		return instance;
	}
	
	public List<ProductDTO> select() throws Exception{
		
		Connection con = null;
		List<ProductDTO> picklist = null;

 		try {
			con = ConnectionProvider.getConnection();
			ProductDAO dao = ProductDAO.getInstance();
			picklist = dao.pickupList(con, null);

			return picklist;
		} catch (SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con);
		}
		return picklist;
	}
}