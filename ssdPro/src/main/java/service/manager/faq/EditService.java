package service.manager.faq;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.FaqManageDTO;
import persistence.manager.FaqDAO;

public class EditService {

	private EditService() {
	}

	private static EditService instance = new EditService();

	public static EditService getInstance() {
		return instance;
	}

	public int edit( String faq_code, String manager_code, String title, String content) {

		Connection con = null;
		int rowCount = 0;

		try {
			con = ConnectionProvider.getConnection();
			FaqDAO dao = FaqDAO.getInstance();

			FaqManageDTO dto = dao.selectOne(con, faq_code);

			con.setAutoCommit(false);
			rowCount = dao.edit(con, faq_code, manager_code, title, content);
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