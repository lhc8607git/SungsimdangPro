package service.manager.store;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;


import domain.StoManageDTO;
import persistence.manager.StoDAO;

public class EditService {
	private EditService() {}

	private static EditService instance = new EditService();

	public static EditService getInstance() {
		return instance;
	}

	public int edit(String store_code, String manager_code, Integer is_global, String region, String name,String brand,String tel,String address,String operating_time,String lat, String lng) {
		Connection con = null;
		int rowCount = 0;

		try {
			con = ConnectionProvider.getConnection();
			StoDAO dao = StoDAO.getInstance();

			StoManageDTO dto = dao.selectOne(con, store_code);

			con.setAutoCommit(false);
			rowCount = dao.edit(con, store_code,  manager_code,  is_global, region,  name, brand, tel, address, operating_time, lat, lng);

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