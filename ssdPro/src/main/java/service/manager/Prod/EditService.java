package service.manager.Prod;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProdManageDTO;
import persistence.manager.ProdDAO;


public class EditService {

	private EditService() {
	}

	private static EditService instance = new EditService();

	public static EditService getInstance() {
		return instance;
	}

	// �닔�젙
	// 23媛�
	public int edit(String prd_code, String cat_code, String stock, String prd_name,String prd_info,String detail_content,String detail_content2,
			String detail_content3,String detail_content4,String prd_prc,String prd_point,String rating,String exp_date,String prd_str,
			String shipping_price,String prd_size,String is_sideoption,String side_optionname,String allergy_info,String ingredient_info
			,String discount_rate,String sales,String is_giftcard) {
		
		Connection con = null;
		int rowCount = 0;
		
		try {
			con = ConnectionProvider.getConnection();
			ProdDAO dao = ProdDAO.getInstance();

			ProdManageDTO dto = dao.selectOne(con, prd_code);

			con.setAutoCommit(false);
			rowCount = dao.edit(con, prd_code, cat_code, stock, prd_name, prd_info, detail_content, detail_content2, detail_content3, detail_content4, prd_prc, prd_point, rating, exp_date, prd_str, shipping_price, prd_size, is_sideoption, side_optionname, allergy_info, ingredient_info, discount_rate, sales, is_giftcard);

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