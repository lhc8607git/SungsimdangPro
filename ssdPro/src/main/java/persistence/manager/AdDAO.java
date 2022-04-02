package persistence.manager;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.AdManageDTO;


public class AdDAO implements IAd {
  
	   private Connection conn = null;
	   private PreparedStatement pstmt = null;
	   private ResultSet rs = null;
	
	
	   // 1. ΩÃ±€≈Ê
	   private AdDAO() {}

	   private static AdDAO instance = new AdDAO();

	   public static AdDAO getInstance() {
			return instance;
	   }

	   @Override
	   public List<AdManageDTO> selectList(Connection con) throws SQLException { 

			String sql =
					" select ad_code, manager_code, title, create_date, content "  
							+ " from AD "
							+" order by ad_code";
			
			ArrayList<AdManageDTO> list = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if ( rs.next() ) {
					list = new ArrayList<AdManageDTO>();
					AdManageDTO dto = null;
					do {
						dto =  new AdManageDTO();

						dto.setAd_code(rs.getString("ad_code"));
						dto.setManager_code(rs.getString("manager_code"));
						dto.setTitle(rs.getString("title"));
						dto.setCreate_date(rs.getDate("create_date"));
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
	   public int insert(Connection con, AdManageDTO dto) throws SQLException {

			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			 String sql = "INSERT INTO AD ( ad_code, manager_code, title, create_date, Content) "
		               + "VALUES ( seq_ad.nextval, ?, ? , sysdate , ?)";
				
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
	   public AdManageDTO selectOne(Connection con, String ad_code) throws SQLException { 
			
			String sql = "select * from AD "
					   +" where ad_code = ?";

			PreparedStatement pstmt = null;
			ResultSet rs = null;		
			AdManageDTO dto = null;

			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, ad_code);
				rs = pstmt.executeQuery();

				if(rs.next()) {
					dto =  new AdManageDTO();

					dto.setAd_code(rs.getString("ad_code"));
					dto.setManager_code(rs.getString("manager_code"));
					dto.setTitle(rs.getString("title"));
					dto.setCreate_date(rs.getDate("create_date"));
					dto.setContent(rs.getString("content"));
			        
				}
			}  finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
			}
			return dto;
	   }

	   @Override
	   public int delete(Connection con, String ad_code) throws SQLException {

			String sql = "delete from AD " 
					+ " where ad_code = ?";  		
			PreparedStatement pstmt = null;
			int rowCount = 0;

			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, ad_code); 			
				rowCount = pstmt.executeUpdate();			
			}  finally {
				JdbcUtil.close(pstmt); 
			}

			return rowCount;
		}
			
	   @Override
	   public int edit(Connection con, String ad_code, String manager_code, String title, String content) throws SQLException {
			String sql = "UPDATE AD "
		            + " SET "
		            + "		manager_code = ? "
		            + "		, title = ? "
		            + "		, content = ? "
		            + " WHERE ad_code = ?";  
			
		      PreparedStatement pstmt = null;
		      int rowCount = 0;
		      
		      try {
		         pstmt = con.prepareStatement(sql);
		         pstmt.setString(1, manager_code);
		         pstmt.setString(2, title);
		         pstmt.setString(3, content);
		         pstmt.setString(4, ad_code);
		         rowCount = pstmt.executeUpdate();
		      }  finally {
		         JdbcUtil.close(pstmt);
		      }
		      return rowCount;
	   }

	   @Override
	   public int getTotalRecords() throws SQLException {
			
			      String sql = "SELECT COUNT(*) totalRecords "
			            +" FROM TBL_CSTVSBOARD ";
			      
			      int totalRecords = 0;

			      this.pstmt = this.conn.prepareStatement(sql); 
			      this.rs  = this.pstmt.executeQuery();
			      
			      if( this.rs.next())  totalRecords = rs.getInt(1);

			      this.pstmt.close();
			      this.rs.close();

			      return totalRecords;
	   }

}