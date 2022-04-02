package service.manager.faq;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;


import domain.FaqManageDTO;
import persistence.manager.FaqDAO;

public class ListService {
	
	// 1. �떛湲��넠
	private ListService() {}

	private static ListService instance = new ListService();

	public static ListService getInstance() {
		return instance;
	}

	public List<FaqManageDTO> select(){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			FaqDAO dao = FaqDAO.getInstance();
			List<FaqManageDTO> list = null;
			list = dao.selectList(con);

			return list;

		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}

/*                                  X               O             O
list.do-> DispatcherServlet ->ListHandler-> ListService -> REplayBoardDAO-> DB  泥섎━
          list.do-> ???       process()
    
         ViewPage   list.jsp X   
*/         



