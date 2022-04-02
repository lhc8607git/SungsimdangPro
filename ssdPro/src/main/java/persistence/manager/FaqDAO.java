package persistence.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;


import domain.FaqManageDTO;

public class FaqDAO implements IFaq {
  
		// 1. ΩÃ±€≈Ê
		private FaqDAO() {}
		private static FaqDAO instance = new FaqDAO();
		public static FaqDAO getInstance() {
			return instance;
		}

		@Override
		public List<FaqManageDTO> selectList(Connection con) throws SQLException { 
			String sql =
					" select faq_code, manager_code, title,  content "  
							+ " from FAQ "
							+" order by faq_code";
			
			ArrayList<FaqManageDTO> list = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if ( rs.next() ) {
					list = new ArrayList<FaqManageDTO>();
					FaqManageDTO dto = null;
					do {
						dto = new FaqManageDTO();
						
						dto.setFaq_code(rs.getString("faq_code"));
						dto.setManager_code(rs.getString("manager_code"));
						dto.setTitle(rs.getString("title"));
						dto.setContent(rs.getString("content"));


						list.add(dto);
					} while ( rs.next() );
				} 
			} finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);			
			} 

			return list;
		}

		
		@Override
		public int insert(Connection con, FaqManageDTO dto) throws SQLException {

			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			 String sql = "INSERT INTO faq ( faq_code, manager_code, title, content) "
		               + "VALUES ( seq_faq.nextval, ?, ? , ?)";
				
				try {
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1, dto.getManager_code());
					pstmt.setString(2, dto.getTitle());
					pstmt.setString(3, dto.getContent());

					rowCount = pstmt.executeUpdate();
				}finally {
					JdbcUtil.close(pstmt);
				} 				
			
			return rowCount;
		}
		

		// 2. 
		@Override
		public FaqManageDTO selectOne(Connection con, String faq_code) throws SQLException { 
			
			String sql = "select * from FAQ "
					   +" where faq_code = ?";
			PreparedStatement pstmt = null;
			ResultSet rs = null;		
			FaqManageDTO dto = null;

			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, faq_code);
				rs = pstmt.executeQuery();

				if(rs.next()) {
					dto =  new FaqManageDTO();

					dto.setFaq_code(rs.getString("faq_code"));
					dto.setManager_code(rs.getString("manager_code"));
					dto.setTitle(rs.getString("title"));
					dto.setContent(rs.getString("content"));
			        
				}
			}  finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
			}
			return dto;
		}


		@Override
		public int delete(Connection con, String faq_code) throws SQLException {

			String sql = "delete from faq " 
					+ " where faq_code = ?";  		
			PreparedStatement pstmt = null;
			int rowCount = 0;

			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, faq_code); 			
				rowCount = pstmt.executeUpdate();			
			}  finally {
				JdbcUtil.close(pstmt); 
			}

			return rowCount;
		}

			
		@Override
		public int edit(Connection con, String faq_code, String manager_code, String title, String content) throws SQLException {

			String sql = "UPDATE FAQ "
		            + " SET "
		            + "		manager_code = ? "
		            + "		, title = ? "
		            + "		, content = ? "
		            + " WHERE faq_code = ?";  
			
		      PreparedStatement pstmt = null;
		      int rowCount = 0;
		      
		      try {
		         pstmt = con.prepareStatement(sql);
		         pstmt.setString(1, manager_code);
		         pstmt.setString(2, title);
		         pstmt.setString(3, content);
		         pstmt.setString(4, faq_code);
		         rowCount = pstmt.executeUpdate();
		      }  finally {
		         JdbcUtil.close(pstmt);
		      }
		      return rowCount;
		}
		
} 