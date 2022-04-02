package service.manager.ad;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.AdManageDTO;
import persistence.manager.AdDAO;

public class ContentService {
	
	// 1. 싱글톤
	private ContentService() {}

	private static ContentService instance = new ContentService();

	public static ContentService getInstance() {
		return instance;
	}

	public AdManageDTO selectOne(String ad_code){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();

			AdDAO dao = AdDAO.getInstance();

			// 1 + 2  트랜잭션 처리 또는 로그 서비스
			con.setAutoCommit(false);			

			// 2. 해당 게시글 정보
			AdManageDTO dto = null;
			dto = dao.selectOne(con, ad_code);

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
