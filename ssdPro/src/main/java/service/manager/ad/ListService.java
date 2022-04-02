package service.manager.ad;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.AdManageDTO;
import persistence.manager.AdDAO;

public class ListService {
	
	private ListService() {}

	private static ListService instance = new ListService();

	public static ListService getInstance() {
		return instance;
	}

	public List<AdManageDTO> select(){

		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			AdDAO dao = AdDAO.getInstance();
			List<AdManageDTO> list = null;
			list = dao.selectList(con);

			return list;

		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
   



