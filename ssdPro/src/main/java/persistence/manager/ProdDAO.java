package persistence.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.ProdManageDTO;

public class ProdDAO implements IProd {
  
		private static Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
	
		public ProdDAO(Connection conn2) {}
		
		private static ProdDAO instance = new ProdDAO(conn);

		public static ProdDAO getInstance() {
			return instance;
		}
		
		
		// 0. PRODUCT�뀒�씠釉� 由ъ뒪�듃 異쒕젰
		@Override
		public List<ProdManageDTO> selectListProduct(Connection con) throws SQLException {
			String sql =
					" select prd_code, cat_code, stock,  prd_name, "
					+ "prd_info, detail_content, detail_content2, detail_content3, detail_content4, "
					+ "prd_prc, prd_point, rating, exp_date, prd_str, shipping_price, prd_size,"
					+ "is_sideoption, side_optionname, allergy_info,ingredient_info, discount_rate,"
					+ "sales, is_giftcard "  
							+ " from PRODUCT "
							+" order by prd_code";
			
			ArrayList<ProdManageDTO> list = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if ( rs.next() ) {
					list = new ArrayList<ProdManageDTO>();
					ProdManageDTO dto = null;
					do {
						dto = new ProdManageDTO();
						
						dto.setPrd_code(rs.getString("prd_code"));
						dto.setCat_code(rs.getString("cat_code"));
						dto.setStock(rs.getString("stock"));
						dto.setPrd_name(rs.getString("prd_name"));
						dto.setPrd_info(rs.getString("prd_info"));
						dto.setDetail_content(rs.getString("detail_content"));
						dto.setDetail_content2(rs.getString("detail_content2"));
						dto.setDetail_content3(rs.getString("detail_content3"));
						dto.setDetail_content4(rs.getString("detail_content4"));
						dto.setPrd_prc(rs.getString("prd_prc"));
						dto.setPrd_point(rs.getString("prd_point"));
						dto.setRating(rs.getString("rating"));
						dto.setExp_date(rs.getString("exp_date"));
						dto.setPrd_str(rs.getString("prd_str"));
						dto.setShipping_price(rs.getString("shipping_price"));
						dto.setPrd_size(rs.getString("prd_size"));
						dto.setIs_sideoption(rs.getString("is_sideoption"));
						dto.setSide_optionname(rs.getString("side_optionname"));
						dto.setAllergy_info(rs.getString("allergy_info"));
						dto.setIngredient_info(rs.getString("ingredient_info"));
						dto.setDiscount_rate(rs.getString("discount_rate"));
						dto.setSales(rs.getString("sales"));
						dto.setIs_giftcard(rs.getString("is_giftcard"));
						
						list.add(dto);
					} while ( rs.next() );
				} 
			} finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);			
			} 

			return list;
		}


		
		// 1. PRDMANAGE�뀒�씠釉� 由ъ뒪�듃 異쒕젰
		@Override
		public List<ProdManageDTO> selectList(Connection con) throws SQLException { 
			String sql =
					" select PRDMANAGE_CODE, MANAGER_CODE, PRD_CODE,  CREATE_DATE, MODIFICATION_DATE "  
							+ " from PRDMANAGE "
							+" order by PRDMANAGE_CODE";
			
			ArrayList<ProdManageDTO> list = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if ( rs.next() ) {
					list = new ArrayList<ProdManageDTO>();
					ProdManageDTO dto = null;
					do {
						dto = new ProdManageDTO();
						
						dto.setPrdmange_code(rs.getString("prdmanage_code"));
						dto.setManager_code(rs.getString("manager_code"));
						dto.setPrd_code(rs.getString("prd_code"));
						dto.setCreate_date(rs.getString("create_date"));
						dto.setModification_date(rs.getString("modification_date"));


						list.add(dto);
					} while ( rs.next() );
				} 
			} finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);			
			} 

			return list;
		}
		

		
		// 2.�긽�뭹 - �긽�뭹 �궘�젣
		@Override
		public int delete2(Connection con, String prd_code) throws SQLException {
			String sql = "delete from PRODUCT " 
					+ " where prd_code = ?";  		
			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, prd_code); 			
				rowCount = pstmt.executeUpdate();			
			}  finally {
				JdbcUtil.close(pstmt); 
			}

			return rowCount;
		}
		


		// 3. �떛�뵒 - �닔�젙
		@Override
		public int edit(Connection con, String prd_code, String cat_code, String stock, String prd_name, 
					String prd_info,String detail_content,String detail_content2,String detail_content3,String detail_content4,
					String prd_prc, String prd_point, String rating, String exp_date, String prd_str, String shipping_price, String prd_size
					, String is_sideoption, String side_optionname, String allergy_info, String ingredient_info
					, String discount_rate, String sales, String is_giftcard)throws SQLException {
			String sql = "UPDATE PRODUCT "
		            + " SET "
		            + "		prd_code = ? "
		            + "		, cat_code = ? "
		            + "		, stock = ? "
		            + "		, prd_name = ? "
		            + "		, prd_info = ? "
		            + "		, detail_content = ? "
		            + "		, detail_content2 = ? "
		            + "		, detail_content3 = ? "
		            + "		, detail_content4 = ? "
		            + "		, prd_prc = ? "
		            + "		, prd_point = ? "
		            + "		, rating = ? "
		            + "		, exp_date = ? "
		            + "		, prd_str = ? "
		            + "		, shipping_price = ? "
		            + "		, prd_size = ? "
		            + "		, is_sideoption = ? "
		            + "		, side_optionname = ? "
		            + "		, allergy_info = ? "
		            + "		, ingredient_info = ? "
		            + "		, discount_rate = ? "
		            + "		, sales = ? "
		            + "		, is_giftcard = ? "
		            + " WHERE prd_code = ?";  
			
		      PreparedStatement pstmt = null;
		      int rowCount = 0;
		      
		      try {
		    	    pstmt = con.prepareStatement(sql);
		    	    pstmt.setString(1, prd_code);
					pstmt.setString(2,  cat_code);
					pstmt.setString(3, stock);
					pstmt.setString(4,  prd_name);
					pstmt.setString(5,  prd_info);
					pstmt.setString(6,  detail_content);
					pstmt.setString(7,  detail_content2);
					pstmt.setString(8,  detail_content3);
					pstmt.setString(9,  detail_content4);
					pstmt.setString(10,  prd_prc);
					pstmt.setString(11,  prd_point);
					pstmt.setString(12,  rating);
					pstmt.setString(13,  exp_date);
					pstmt.setString(14,  prd_str);
					pstmt.setString(15,  shipping_price);
					pstmt.setString(16,  prd_size);						
					pstmt.setString(17,  is_sideoption);
					pstmt.setString(18, side_optionname);
					pstmt.setString(19, allergy_info);
					pstmt.setString(20, ingredient_info);
					pstmt.setString(21, discount_rate);
					pstmt.setString(22, sales);
					pstmt.setString(23, is_giftcard);
		    	  
		         rowCount = pstmt.executeUpdate();
		      }  finally {
		         JdbcUtil.close(pstmt);
		      }
		      return rowCount;
		}

		

		// 4. �긽�뭹 - �긽�뭹 �궡�슜蹂닿린
		@Override
		public ProdManageDTO selectOne(Connection con, String prd_code) throws SQLException { 
			
			String sql = "select * from PRODUCT "
					   +" where prd_code = ?";
			PreparedStatement pstmt = null;
			ResultSet rs = null;		
			ProdManageDTO dto = null;
			
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, prd_code);
				rs = pstmt.executeQuery();

				if(rs.next()) {
					dto =  new ProdManageDTO();

//					dto.setStore_code(rs.getString("store_code"));
//					dto.setManager_code(rs.getString("manager_code"));
//					dto.setIs_global(rs.getInt("is_global"));
//					dto.setRegion(rs.getString("region"));
//					dto.setName(rs.getString("name"));
//					dto.setBrand(rs.getString("brand"));
//					dto.setTel(rs.getString("tel"));
//					dto.setAddress(rs.getString("address"));
//					dto.setOperating_time(rs.getString("operating_time"));
//					dto.setLat(rs.getString("lat"));
//					dto.setLng(rs.getString("lng"));
					
			        
					// 23媛�
					dto.setPrd_code(rs.getString("prd_code"));
					dto.setCat_code(rs.getString("cat_code"));
					dto.setStock(rs.getString("stock"));
					dto.setPrd_name(rs.getString("prd_name"));
					dto.setPrd_info(rs.getString("prd_info"));
					dto.setDetail_content(rs.getString("detail_content"));
					dto.setDetail_content2(rs.getString("detail_content2"));
					dto.setDetail_content3(rs.getString("detail_content3"));
					dto.setDetail_content4(rs.getString("detail_content4"));
					dto.setPrd_prc(rs.getString("prd_prc"));
					dto.setPrd_point(rs.getString("prd_point"));
					dto.setRating(rs.getString("rating"));
					dto.setExp_date(rs.getString("exp_date"));
					dto.setPrd_str(rs.getString("prd_str"));
					dto.setShipping_price(rs.getString("shipping_price"));
					dto.setPrd_size(rs.getString("prd_size"));
					dto.setIs_sideoption(rs.getString("is_sideoption"));
					dto.setSide_optionname(rs.getString("side_optionname"));
					dto.setAllergy_info(rs.getString("allergy_info"));
					dto.setIngredient_info(rs.getString("ingredient_info"));
					dto.setDiscount_rate(rs.getString("discount_rate"));
					dto.setSales(rs.getString("sales"));
					dto.setIs_giftcard(rs.getString("is_giftcard"));
				}
			}  finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
			}

			return dto;
		}

		
		
		// 5.�긽�뭹 - �긽�뭹 異붽�
		@Override
		public int insert(Connection con, ProdManageDTO dto) throws SQLException {
			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			
			 String sql = "INSERT INTO product ( prd_code, cat_code, stock,  prd_name, prd_info, "
			 		+ "detail_content, detail_content2, detail_content3, detail_content4, "
			 		+ "prd_prc, prd_point, rating, exp_date, prd_str, shipping_price, prd_size, is_sideoption, side_optionname, "
			 		+ "allergy_info, ingredient_info, discount_rate, sales, is_giftcard) "
			          + "VALUES ( ?, ?, ? , ?, ?,"
		              // + "VALUES ( seq_product.nextval, ?, ? , ?, ?,"
		               + "?, ?, ?, ?,"
		               + "?, ?, ?, ?, ?, ?, ?, ?, ?,"
		               + "?, ?, ?, ?, ?)";
				
				try {
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1,  dto.getPrd_code()); 
					pstmt.setString(2,  dto.getCat_code()); 
					pstmt.setString(3,  dto.getStock()); 
					pstmt.setString(4,  dto.getPrd_name()); 
					pstmt.setString(5,  dto.getPrd_info());
					pstmt.setString(6,  dto.getDetail_content()); 
					pstmt.setString(7,  dto.getDetail_content2()); 
					pstmt.setString(8,  dto.getDetail_content3()); 
					pstmt.setString(9,  dto.getDetail_content4()); 
					pstmt.setString(10,  dto.getPrd_prc()); 
					pstmt.setString(11,  dto.getPrd_point()); 
					pstmt.setString(12,  dto.getRating()); 
					pstmt.setString(13,  dto.getExp_date()); 
					pstmt.setString(14,  dto.getPrd_str()); 
					pstmt.setString(15,  dto.getShipping_price()); 
					pstmt.setString(16,  dto.getPrd_size()); 
					pstmt.setString(17,  dto.getIs_sideoption()); 
					pstmt.setString(18,  dto.getSide_optionname()); 
					pstmt.setString(19,  dto.getAllergy_info()); 
					pstmt.setString(20,  dto.getIngredient_info()); 
					pstmt.setString(21,  dto.getDiscount_rate()); 
					pstmt.setString(22,  dto.getSales()); 
					pstmt.setString(23,  dto.getIs_giftcard()); 

					rowCount = pstmt.executeUpdate();
				}finally {
					JdbcUtil.close(pstmt);
				} 				
			
			
			return rowCount;
		}

		
		
		// 6.�긽�뭹 愿�由� - �긽�뭹 �궘�젣
		@Override
		public int delete(Connection con, String prd_code) throws SQLException {
			String sql = "delete from PRDMANAGE " 
					+ " where prd_code = ?";  		
			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			try {
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, prd_code); 			
				rowCount = pstmt.executeUpdate();			
			}  finally {
				JdbcUtil.close(pstmt); 
			}

			return rowCount;
		}
		
		
		
		// 7.�긽�뭹 愿�由� - �긽�뭹 理쒖큹 �벑濡� �궇吏�
		@Override
		public int registrationFisrtdate(Connection con, String manager_code, String prd_code, String create_date) throws SQLException {
			PreparedStatement pstmt = null;
			int rowCount = 0;
			
			 
			 String sql = "Insert into PRDMANAGE (PRDMANAGE_CODE, MANAGER_CODE,PRD_CODE,CREATE_DATE) "
			 		+ "values (seq_prdmanage.nextval, ?, ?, ?);";         //<-- �떆���뒪 留뚮뱾�뼱 以섏빞�븿. �쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾
			                   // '2000001'
			 
				try {
					pstmt = con.prepareStatement(sql);
					
					pstmt.setString(1,  manager_code);
					pstmt.setString(2,  prd_code);
					pstmt.setString(3,  create_date);      //<-- �씠嫄� �굹以묒뿉 DATE �삎�떇�쑝濡� 諛붽퓭�빞 �븷 �벏 �쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾

					rowCount = pstmt.executeUpdate();
				}finally {
					JdbcUtil.close(pstmt);
				} 				
			
			
			return rowCount;
		}

		
		
		// 8.�긽�뭹 愿�由� - �긽�뭹 �닔�젙 �궇吏�
		@Override
		public int updateDate(Connection con, String prd_code, String modification_date) throws SQLException {
			String sql = "UPDATE PRDMANAGE "
		            + " SET modification_date = ? "
		            + " WHERE prd_code = ?";  
			
		      PreparedStatement pstmt = null;
		      int rowCount = 0;
		      
		      try {
		    	  pstmt = con.prepareStatement(sql);
				  pstmt.setString(1,  modification_date);
		    	  pstmt.setString(2, prd_code);

		         rowCount = pstmt.executeUpdate();
		      }  finally {
		         JdbcUtil.close(pstmt);
		      }
		      return rowCount;
		}


		@Override
		public int getTotalRecords() throws SQLException {
			
		      String sql = "select count(*) totalproduct "
					+ "from product ";
			
		      int totalRecords = 0;
			
		      pstmt = conn.prepareStatement(sql); 
		      rs  = pstmt.executeQuery();
		      
		      if( this.rs.next())  totalRecords = rs.getInt(1);

		      this.pstmt.close();
		      this.rs.close();

		      return totalRecords;
		}





		@Override
		public ArrayList<ProdManageDTO> select(int currentPage, int numberPerPage) throws SQLException {
			
			String sql = "SELECT *  "
		            + "   FROM ( "
		            + "           SELECT ROWNUM no, t.* "
		            + "           FROM ( "
		            + "                   SELECT prd_code, prd_name, prd_info"
		            + "                        , case when sysdate between 0 and 1/24 then 'true' else 'false' end newmark "
		            + "                   FROM PRODUCT "
		            + "                   ORDER BY prd_code asc "
		            + "                 ) t "
		            + "         ) m "
		            + "   WHERE m.no BETWEEN ? AND ?" ;
			
		      this.pstmt = this.conn.prepareStatement(sql);
		      // BETWEEN ? AND ?
		      int begin = (currentPage-1)*numberPerPage +1;
		      int end = begin + numberPerPage -1;
		      this.pstmt.setInt(1, begin);
		      this.pstmt.setInt(2, end);

		      this.rs = this.pstmt.executeQuery();
		      ArrayList<ProdManageDTO> list = null;
		      ProdManageDTO dto = null;
		      String prd_code;
		      String prd_name;
		      String prd_info;
		     
		      boolean newmark;              //  1

		      if (rs.next()) {
		         list = new ArrayList<ProdManageDTO>();
		         do {
		        	 prd_code = rs.getString("prd_code");
		        	 prd_name = rs.getString("prd_name");
		        	 prd_info = rs.getString("prd_info");
		           

		            newmark =  Boolean.parseBoolean(  rs.getString("newmark") );  // 2

		            dto = new ProdManageDTO();
		            dto.setPrd_code(prd_code);
		            dto.setPrd_name(prd_name);
		            dto.setPrd_info(prd_info);
		            
		            dto.setNewmark(newmark);  //  3  true/false

		            list.add(dto);
		         } while (rs.next());
		      }

		      this.rs.close();
		      this.pstmt.close();

		      return list;
		}
		
}