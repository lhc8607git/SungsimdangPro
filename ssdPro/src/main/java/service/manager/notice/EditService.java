package service.manager.notice;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;


import domain.NoticeManageDTO;
import persistence.manager.NoticeDAO;

public class EditService {

	private EditService() {
	}

	private static EditService instance = new EditService();

	public static EditService getInstance() {
		return instance;
	}

	public int edit(String notice_code, String manager_code, String title, String content, int is_fix, String img) {

		Connection con = null;
		int rowCount = 0;

		try {
			con = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();

			NoticeManageDTO dto = dao.selectOne(con, notice_code);

			con.setAutoCommit(false);
			rowCount = dao.edit(con, notice_code,  manager_code,  title, content,  is_fix, img);

			con.commit();

			return rowCount;

		} catch (NamingException | SQLException e) {
			JdbcUtil.rollback(con);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}