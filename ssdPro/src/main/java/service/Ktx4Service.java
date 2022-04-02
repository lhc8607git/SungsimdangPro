package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductDTO;
import persistence.ProductDAO;

public class Ktx4Service {
	private Ktx4Service() {}

	private static Ktx4Service instance = new Ktx4Service();

	public static Ktx4Service getInstance() {
		return instance;
	}
	
	public List<ProductDTO> select() throws Exception{
		
		Connection con = null;
		List<ProductDTO> ktxlist = null;

 		try {
			con = ConnectionProvider.getConnection();
			ProductDAO dao = ProductDAO.getInstance();
			ktxlist = dao.ktxList(con, null);

			return ktxlist;

		} catch (SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con);
		}
		return ktxlist;
	}
}