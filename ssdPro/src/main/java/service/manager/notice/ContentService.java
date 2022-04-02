package service.manager.notice;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.NoticeManageDTO;
import persistence.manager.NoticeDAO;

public class ContentService {
	
	// 1. �̱���
	private ContentService() {}
	private static ContentService instance = new ContentService();
	public static ContentService getInstance() {
		return instance;
	}

	public NoticeManageDTO selectOne(String notice_code){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();

			con.setAutoCommit(false);			

			//1.��ȸ�� ����
			dao.updateReadCount(con, notice_code);

			// 2. �ش� �Խñ� ����
			NoticeManageDTO dto = null;
			dto = dao.selectOne(con, notice_code);

			con.commit();		
	
			return dto;

		} catch (NamingException | SQLException e) { 
			JdbcUtil.rollback(con);			
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
