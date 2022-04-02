package service.manager.store;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.StoManageDTO;
import persistence.manager.StoDAO;




public class ListService {
	
	private ListService() {}

	private static ListService instance = new ListService();

	public static ListService getInstance() {
		return instance;
	}

	public List<StoManageDTO> select(){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			StoDAO dao = StoDAO.getInstance();
			List<StoManageDTO> list = null;
			list = dao.selectList(con);

			return list;
		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}



