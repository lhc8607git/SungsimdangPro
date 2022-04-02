package service.manager.Prod;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProdManageDTO;
import persistence.manager.ProdDAO;




public class ListService {
	
	// 1. �떛湲��넠
	private ListService() {}

	private static ListService instance = new ListService();

	public static ListService getInstance() {
		return instance;
	}

	public List<ProdManageDTO> select(){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			
			ProdDAO dao = ProdDAO.getInstance();
			
			List<ProdManageDTO> list = null;
			
			list = dao.selectListProduct(con);

			return list;

		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}



