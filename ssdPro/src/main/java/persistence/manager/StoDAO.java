package persistence.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;


import domain.StoManageDTO;

public class StoDAO implements IStore {
  
		// 1. ΩÃ±€≈Ê
		private StoDAO() {}

		private static StoDAO instance = new StoDAO();

		public static StoDAO getInstance() {
			return instance;
		}

		@Override
		public List<StoManageDTO> selectList(Connection con) throws SQLException { 

			String sql =
					" select store_code, manager_code, is_global,  region, name, brand, tel, address, operating_time, lat, lng "  
							+ " from STORE "
							+" order by store_code";
			
			ArrayList<StoManageDTO> list = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if ( rs.next() ) {
					list = new ArrayList<StoManageDTO>();
					StoManageDTO dto = null;
					do {
						dto = new StoManageDTO();
						
						dto.setStore_code(rs.getString("store_code"));
						dto.setManager_code(rs.getString("manager_code"));
						dto.setIs_global(rs.getInt("is_global"));
						dto.setRegion(rs.getString("region"));
						dto.setName(rs.getString("name"));
						dto.setBrand(rs.getString("brand"));
						dto.setTel(rs.getString("tel"));
						dto.setAddress(rs.getString("address"));
						dto.setOperating_time(rs.getString("operating_time"));
						dto.setLat(rs.getString("lat"));
						dto.setLng(rs.getString("lng"));
						


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
		public int insert(Connection con, StoManageDTO dto) throws SQLException {

			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			
			 String sql = "INSERT INTO store ( store_code, manager_code, is_global,  region, name, brand, tel, address, operating_time, lat, lng) "
		               + "VALUES ( seq_store.nextval, ?, ? , ?,?,?,?,?,?,?,?)";
				
				try {
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1,  dto.getManager_code());
					pstmt.setInt(2,  dto.getIs_global());
					pstmt.setString(3,  dto.getRegion());
					pstmt.setString(4,  dto.getName());
					pstmt.setString(5,  dto.getBrand());
					pstmt.setString(6,  dto.getTel());
					pstmt.setString(7,  dto.getAddress());
					pstmt.setString(8,  dto.getOperating_time());
					pstmt.setString(9,  dto.getLat());
					pstmt.setString(10,  dto.getLng());

					rowCount = pstmt.executeUpdate();
				}finally {
					JdbcUtil.close(pstmt);
				} 				
			
			
			return rowCount;
		}
		

		// 2. 
		@Override
		public StoManageDTO selectOne(Connection con, String store_code) throws SQLException { 
			
			String sql = "select * from STORE "
					   +" where store_code = ?";
			PreparedStatement pstmt = null;
			ResultSet rs = null;		
			StoManageDTO dto = null;

			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, store_code);
				rs = pstmt.executeQuery();

				if(rs.next()) {
					dto =  new StoManageDTO();

					dto.setStore_code(rs.getString("store_code"));
					dto.setManager_code(rs.getString("manager_code"));
					dto.setIs_global(rs.getInt("is_global"));
					dto.setRegion(rs.getString("region"));
					dto.setName(rs.getString("name"));
					dto.setBrand(rs.getString("brand"));
					dto.setTel(rs.getString("tel"));
					dto.setAddress(rs.getString("address"));
					dto.setOperating_time(rs.getString("operating_time"));
					dto.setLat(rs.getString("lat"));
					dto.setLng(rs.getString("lng"));
					
			        
				}
			}  finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
			}

			return dto;
		}

		


		@Override
		public int delete(Connection con, String store_code) throws SQLException {

			String sql = "delete from store " 
					+ " where store_code = ?";  		
			PreparedStatement pstmt = null;
			int rowCount = 0;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, store_code); 			
				rowCount = pstmt.executeUpdate();			
			}  finally {
				JdbcUtil.close(pstmt); 
			}

			return rowCount;
		}

			
		@Override
		public int edit(Connection con, String store_code, String manager_code, Integer is_global,String region, String name,String brand,String tel,String address,String operating_time,String lat, String lng) throws SQLException {

			String sql = "UPDATE STORE "
		            + " SET "
		            + "		manager_code = ? "
		            + "		, is_global = ? "
		            + "		, region = ? "
		            + "		, name = ? "
		            + "		, brand = ? "
		            + "		, tel = ? "
		            + "		, address = ? "
		            + "		, operating_time = ? "
		            + "		, lat = ? "
		            + "		, lng = ? "
		            + " WHERE store_code = ?";  
			
		      PreparedStatement pstmt = null;
		      int rowCount = 0;
		      
		      try {
		    	  pstmt = con.prepareStatement(sql);
		    	  pstmt.setString(1, manager_code);
					pstmt.setInt(2,  is_global);
					pstmt.setString(3,  region);
					pstmt.setString(4,  name);
					pstmt.setString(5,  brand);
					pstmt.setString(6,  tel);
					pstmt.setString(7,  address);
					pstmt.setString(8,  operating_time);
					pstmt.setString(9,  lat);
					pstmt.setString(10,  lng);
					pstmt.setString(11, store_code);
		    	  
		         rowCount = pstmt.executeUpdate();
		      }  finally {
		         JdbcUtil.close(pstmt);
		      }
		      return rowCount;
		}


		
} 