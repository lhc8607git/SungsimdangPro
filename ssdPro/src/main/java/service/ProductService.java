package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductDTO;
import persistence.ProductDAO;
import persistence.ProductDAOImpl;

public class ProductService {

	private ProductService() {}

	private static ProductService instance = new ProductService();
	
	public static ProductService getInstance() {
		return instance;
	}
	

	public List<ProductDTO> bestList(){
		
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			ProductDAOImpl dao = ProductDAOImpl.getInstance();
			List<ProductDTO> list = null;
			list = dao.bestList(con);

			return list;
		} catch (NamingException | SQLException e) {
			//e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	

	public ProductDTO selectOne(String prd_code){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			ProductDAO dao = ProductDAO.getInstance();
			
			con.setAutoCommit(false);			
			// 2. 해당 게시글 정보
			ProductDTO dto = null;
			dto = dao.selectOne(con, prd_code);

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
