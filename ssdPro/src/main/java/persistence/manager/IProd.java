package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.ProdManageDTO;
import domain.StoManageDTO;



public interface IProd {
		
		//ArrayList<AdManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
	
	
	
		// 0. PRODUCT�뀒�씠釉� 由ъ뒪�듃 異쒕젰
		List<ProdManageDTO> selectListProduct(Connection con) throws SQLException;	
	
		// 1. PRDMANAGE�뀒�씠釉� 由ъ뒪�듃 異쒕젰
		List<ProdManageDTO> selectList(Connection con) throws SQLException;	
		
		// 2.�긽�뭹 - �긽�뭹 �궘�젣
		int delete2(Connection con, String prd_code) throws SQLException;
		
		// 3. �떛�뵒 - �닔�젙
		int edit(Connection con, String prd_code, String cat_code, String stock, String prd_name, 
		String prd_info,String detail_content,String detail_content2,String detail_content3,String detail_content4,
		String prd_prc, String prd_point, String rating, String exp_date, String prd_str,  String shipping_price, String prd_size
		, String is_sideoption, String side_optionname, String allergy_info, String ingredient_info
		, String discount_rate, String sales, String is_giftcard) throws SQLException;

		// 4. �긽�뭹 - �긽�뭹 �궡�슜蹂닿린
		ProdManageDTO selectOne( Connection con, String prd_code) throws SQLException;	
		
		// 5.�긽�뭹 - �긽�뭹 異붽�
		int insert( Connection con, ProdManageDTO dto) throws SQLException;
		
		// 6.�긽�뭹 愿�由� - �긽�뭹 �궘�젣
		int delete(Connection con, String prd_code) throws SQLException;
		
		// 7.�긽�뭹 愿�由� - �긽�뭹 理쒖큹 �벑濡� �궇吏�
		int registrationFisrtdate(Connection con, String manager_code,String prd_code, String create_date) throws SQLException;
		
		// 8.�긽�뭹 愿�由� - �긽�뭹 �닔�젙 �궇吏�
		int updateDate(Connection con, String prd_code, String modification_date) throws SQLException;
		
//		// �긽�뭹 �닔�젙
//		int edit(Connection con, String prd_code, String cat_code, Integer stock, String prd_name, 
//				String prd_info,String detail_content,String detail_content2,String detail_content3,String detail_content4,
//				String prd_prc, String prd_point, String rating, String exp_date, String prd_str, String shipping_price, String prd_size
//				, String is_sideoption, String side_optionname, String allergy_info, String ingredient_info
//				, String discount_rate, String sales, String is_giftcard) throws SQLException;

		
		//9. 총 레코드수를 반환하는 메서드 선언
		int getTotalRecords() throws SQLException;
		
		//10 페이징 처리
		ArrayList<ProdManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
		// 9. �긽�뭹 �씠誘몄� �뀒�씠釉� - 議곗씤 (�긽�뭹�씠誘몄� �뀒�씠釉�, �긽�뭹�뀒�씠釉� )
//		SELECT p.PRD_CODE, CAT_CODE, STOCK, PRD_NAME, PRD_INFO, DETAIL_CONTENT,
//		DETAIL_CONTENT2, DETAIL_CONTENT3, DETAIL_CONTENT4, PRD_PRC, PRD_POINT,
//		RATING, EXP_DATE, PRD_STR, SHIPPING_PRICE, PRD_SIZE, IS_SIDEOPTION,
//		SIDE_OPTIONNAME, ALLERGY_INFO, INGREDIENT_INFO, DISCOUNT_RATE, SALES,
//		IS_GIFTCARD, i.img1, i.img2, i.img3
//		FROM product p, imgprd i
//		WHERE p.prd_code = i.prd_code
//		ORDER BY sales DESC;
		
		
//		- �긽�뭹 �뀒�씠釉붿뿉�꽌 �뙋留ㅻ웾 best 100 戮묒븘�삤湲� + �씠誘몄� + num + 移댄뀒怨좊━ �� 議곌굔 嫄멸린
//		SELECT ROWNUM num, PRD_CODE, CAT_CODE, STOCK, PRD_NAME, PRD_INFO, DETAIL_CONTENT,
//		DETAIL_CONTENT2, DETAIL_CONTENT3, DETAIL_CONTENT4, PRD_PRC, PRD_POINT,
//		RATING, EXP_DATE, PRD_STR, SHIPPING_PRICE, PRD_SIZE, IS_SIDEOPTION,
//		SIDE_OPTIONNAME, ALLERGY_INFO, INGREDIENT_INFO, DISCOUNT_RATE, SALES,
//		IS_GIFTCARD, img1, img2, img3, maincat_code
//		FROM(
//		SELECT p.PRD_CODE, p.CAT_CODE, STOCK, PRD_NAME, PRD_INFO, DETAIL_CONTENT,
//		DETAIL_CONTENT2, DETAIL_CONTENT3, DETAIL_CONTENT4, PRD_PRC, PRD_POINT,
//		RATING, EXP_DATE, PRD_STR, SHIPPING_PRICE, PRD_SIZE, IS_SIDEOPTION,
//		SIDE_OPTIONNAME, ALLERGY_INFO, INGREDIENT_INFO, DISCOUNT_RATE, SALES,
//		IS_GIFTCARD, i.img1, i.img2, i.img3, c.maincat_code
//		FROM product p, imgprd i, category c, maincategory m
//		WHERE p.prd_code = i.prd_code and p.cat_code = c.cat_code
//		ORDER BY sales DESC
//		)
//		WHERE ROWNUM <= 100 and maincat_code = 3700001;
//		
		
		// 10. �긽�뭹愿�由� �뀒�씠釉� - 議곗씤 (愿�由ъ옄�뀒�씠釉�, �긽�뭹 �뀒�씠釉� )
		
}
