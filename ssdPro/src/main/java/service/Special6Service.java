package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductDTO;
import persistence.ProductDAO;

public class Special6Service {

	private Special6Service() {}
	private static Special6Service instance = new Special6Service();
	public static Special6Service getInstance() {
		return instance;
	}
	
	public List<ProductDTO> select() throws Exception{
		
		Connection con = null;
		List<ProductDTO> spe6list = null;

 		try {
			con = ConnectionProvider.getConnection();
			ProductDAO dao = ProductDAO.getInstance();
			spe6list = dao.special6List(con, null);

			return spe6list;
		} catch (SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con);
		}
		return spe6list;
	}
}