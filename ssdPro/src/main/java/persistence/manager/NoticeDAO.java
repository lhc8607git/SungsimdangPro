package persistence.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.NoticeManageDTO;


public class NoticeDAO implements INotice {
  
		// 1. ½Ì±ÛÅæ
		private NoticeDAO() {}

		private static NoticeDAO instance = new NoticeDAO();

		public static NoticeDAO getInstance() {
			return instance;
		}

		@Override
		public List<NoticeManageDTO> selectList(Connection con) throws SQLException { 

			String sql =
					" select notice_code, manager_code, title, content, view_count, create_date, is_fix, img "  
							+ " from NOTICE "
							+" order by create_date desc";
			
			ArrayList<NoticeManageDTO> list = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if ( rs.next() ) {
					list = new ArrayList<NoticeManageDTO>();
					NoticeManageDTO dto = null;
					do {
						dto = new NoticeManageDTO();
						
						dto.setNotice_code(rs.getString("notice_code"));
						dto.setManager_code(rs.getString("manager_code"));
						dto.setTitle(rs.getString("title"));
						dto.setContent(rs.getString("content"));
						dto.setView_count(rs.getInt("view_count"));
						dto.setCreate_date(rs.getDate("create_date"));
						dto.setIs_fix(rs.getInt("is_fix"));
						dto.setImg(rs.getString("img"));
						


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
		public int insert(Connection con, NoticeManageDTO dto) throws SQLException {
			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			
			 String sql = "INSERT INTO NOTICE ( notice_code, manager_code, title, content, create_date, is_fix, img) "
		               + "VALUES ( seq_notice.nextval, ?, ? , ?, sysdate,?,?)";
				
				try {
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1,  dto.getManager_code());
					pstmt.setString(2, dto.getTitle() );
					pstmt.setString(3,  dto.getContent());
					pstmt.setInt(4,  dto.getIs_fix());
					pstmt.setString(5,  dto.getImg());

					rowCount = pstmt.executeUpdate();
				}finally {
					JdbcUtil.close(pstmt);
				} 				
			
			
			return rowCount;
		}
		

		// 2. 
		@Override
		public NoticeManageDTO selectOne(Connection con, String notice_code) throws SQLException { 
			
			String sql = "select * from NOTICE "
					   +" where notice_code = ?";
			PreparedStatement pstmt = null;
			ResultSet rs = null;		
			NoticeManageDTO dto = null;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, notice_code);
				rs = pstmt.executeQuery();

				if(rs.next()) {
					dto =  new NoticeManageDTO();

					
					dto.setNotice_code(rs.getString("notice_code"));
					dto.setManager_code(rs.getString("manager_code"));
					dto.setView_count(rs.getInt("view_count"));
					dto.setTitle(rs.getString("title"));
					dto.setContent(rs.getString("content"));
					dto.setIs_fix(rs.getInt("is_fix"));
					dto.setImg(rs.getString("img"));
					
					
			        
				}
			}  finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
			}

			return dto;
		}

		


		@Override
		public int delete(Connection con, String notice_code) throws SQLException {
			String sql = "delete from notice " 
					+ " where notice_code = ?";  		
			PreparedStatement pstmt = null;
			int rowCount = 0;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, notice_code); 			
				rowCount = pstmt.executeUpdate();			
			}  finally {
				JdbcUtil.close(pstmt); 
			}

			return rowCount;
		}
			

		@Override
		public int edit(Connection con, String notice_code, String manager_code, String title, String content, int is_fix, String img)throws SQLException {

			String sql = "UPDATE NOTICE "
		            + " SET "
		            + "		manager_code = ? "
		            + "		, title = ? "
		            + "		, content = ? "
		            + "		, is_fix = ? "
		            + "		, img = ? "
		            + " WHERE notice_code = ?";  
			
		      PreparedStatement pstmt = null;
		      int rowCount = 0;
		      
		      try {
		    	  pstmt = con.prepareStatement(sql);
		    	  
		    	  pstmt.setString(1, manager_code);
		    	  pstmt.setString(2, title);
		    	  pstmt.setString(3, content);
		    	  pstmt.setInt(4, is_fix);
		    	  pstmt.setString(5, img);
		    	  pstmt.setString(6, notice_code);
		    	  
		         rowCount = pstmt.executeUpdate();
		      }  finally {
		         JdbcUtil.close(pstmt);
		      }
		      return rowCount;
		}


		//Á¶È¸¼ö Áõ°¡
		@Override
		public int updateReadCount(Connection con, String notice_code) throws SQLException {

			String sql = "update NOTICE "
				     +" set view_count = view_count +1 "
				     +" where notice_code = ?";

		PreparedStatement pstmt = null;		
		int rowCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, notice_code);
			rowCount = pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		return rowCount;		
		}

		
}