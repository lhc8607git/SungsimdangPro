package service.manager.notice;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.NoticeManageDTO;
import persistence.manager.NoticeDAO;

public class ListService {
	
	private ListService() {}
	private static ListService instance = new ListService();
	public static ListService getInstance() {
		return instance;
	}

	public List<NoticeManageDTO> select(){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();
			List<NoticeManageDTO> list = null;
			list = dao.selectList(con);

			return list;

		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}



