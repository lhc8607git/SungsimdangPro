package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.DeliveryDTO;
import domain.ProductDTO;

public class DeliveryDAOImpl implements DeliveryDAO{

	// 1. 싱글톤
	private DeliveryDAOImpl() {}

	private static DeliveryDAOImpl instance = new DeliveryDAOImpl();

	public static DeliveryDAOImpl getInstance() {
		return instance;
	}

	// 택배 가능 목록
	@Override
	public List<DeliveryDTO> deliveryList(Connection con) throws SQLException {
		 String sql =
		            "SELECT ROWNUM num, t.* "
		            + "                   FROM( "
		            + "                      SELECT DISTINCT p.PRD_CODE, p.CAT_CODE, STOCK, PRD_NAME, PRD_INFO, DETAIL_CONTENT, "
		            + "                          DETAIL_CONTENT2, DETAIL_CONTENT3, DETAIL_CONTENT4, PRD_PRC, PRD_POINT, "
		            + "                          RATING, EXP_DATE, PRD_STR, SHIPPING_PRICE, PRD_SIZE, IS_SIDEOPTION, "
		            + "                          SIDE_OPTIONNAME, ALLERGY_INFO, INGREDIENT_INFO, DISCOUNT_RATE, SALES, "
		            + "                          IS_GIFTCARD, i.img1, i.img2, i.img3, m.create_date, c.maincat_code, "
		            + "                          s.delivery_option "
		            + "                      FROM product p, imgprd i, prdmanage m, category c, maincategory ma, shipoption s "
		            + "                      WHERE p.prd_code = i.prd_code AND p.prd_code = m.prd_code AND p.cat_code = c.cat_code  "
		            + "                            AND p.prd_code = s.prd_code AND s.delivery_option = 1 "
		            + "                      ) t  "
		            + "                   WHERE REGEXP_LIKE(maincat_code, '.*') ";
		      ArrayList<DeliveryDTO> deliveryList = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;

		      try {
		               pstmt = con.prepareStatement(sql);
		               rs = pstmt.executeQuery();
		               if ( rs.next() ) {
		        	      deliveryList = new ArrayList<DeliveryDTO>();
		        	      DeliveryDTO dto = null;
		        	      do {
		        	            dto =  new DeliveryDTO();
		               
		        	            dto.setNum( rs.getInt("num") );
		        	            dto.setPrd_code( rs.getString("prd_code") );
		        	            dto.setCat_code( rs.getString("cat_code") );
		        	            dto.setStock( rs.getInt( ("stock") ) );
		        	            dto.setPrd_name( rs.getString("prd_name") );
		        	            dto.setPrd_info( rs.getString("prd_info") );
		        	            dto.setDetail_content( rs.getString("detail_content") );
		        	            dto.setDetail_content2( rs.getString("detail_content2") );
		        	            dto.setDetail_content3( rs.getString("detail_content3") );
		        	            dto.setDetail_content4( rs.getString("detail_content4") );
		        	            dto.setPrd_prc( rs.getInt("prd_prc") );
		        	            dto.setPrd_point( rs.getInt("prd_point") );
		        	            dto.setRating( rs.getInt("rating") );
		        	            dto.setExp_date( rs.getString("exp_date") );
		        	            dto.setPrd_str( rs.getString("prd_str") );
		        	            dto.setShipping_price( rs.getInt("shipping_price") );
		        	            dto.setPrd_size( rs.getString("prd_size") );
		        	            dto.setIs_sideoption( rs.getInt("is_sideoption") );
		        	            dto.setIs_sideoption( rs.getInt("is_sideoption") );
		        	            dto.setAllergy_info( rs.getString("allergy_info") );
		        	            dto.setIngredient_info( rs.getString("ingredient_info") );
		        	            dto.setDiscount_rate( rs.getInt("discount_rate") );
		        	            dto.setSales( rs.getInt("sales") );
		        	            dto.setIs_giftcard( rs.getInt("is_giftcard") );
		        	            dto.setImg1( rs.getString("img1") );
		        	            dto.setImg2( rs.getString("img2") );
		        	            dto.setImg3( rs.getString("img3") );
		               
		        	            deliveryList.add(dto);
		        	      } while ( rs.next() );
		               }
		      } finally {
		         JdbcUtil.close(pstmt);
		         JdbcUtil.close(rs);         
		      }
		      
		      return deliveryList;
	
	}

	
}
