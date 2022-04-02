package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductDTO;
import persistence.ProductDAO;

public class Daejeon4Service {

	private Daejeon4Service() {}

	private static Daejeon4Service instance = new Daejeon4Service();

	public static Daejeon4Service getInstance() {
		return instance;
	}
	
	public List<ProductDTO> select() throws Exception{
		
		Connection con = null;
		List<ProductDTO> daelist = null;

 		try {
			con = ConnectionProvider.getConnection();
			ProductDAO dao = ProductDAO.getInstance();
			daelist = dao.daejeonList(con, null);

			return daelist;

		} catch (SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con);
		}
		return daelist;
	}
}