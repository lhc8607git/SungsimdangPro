package command.manager.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.ProdManageDTO;
import service.manager.Prod.WriteService;

public class ProdWriteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request
			, HttpServletResponse response) throws Exception {
		
		if( request.getMethod().equals("GET") ) {
			return "productwrite";
		}else if( request.getMethod().equals("POST") ) {  // POST

			String prd_code = request.getParameter("prd_code");
			String cat_code = request.getParameter("cat_code");
			String stock = request.getParameter("stock"); 
			String prd_name = request.getParameter("prd_name"); 
			String prd_info = request.getParameter("prd_info"); 
			String detail_content = request.getParameter("detail_content"); 
			String detail_content2 = request.getParameter("detail_content2"); 
			String detail_content3 = request.getParameter("detail_content3"); 
			String detail_content4 = request.getParameter("detail_content4"); 
			String prd_prc = request.getParameter("prd_prc"); 
			String prd_point = request.getParameter("prd_point"); 
			String rating = request.getParameter("rating"); 
			String exp_date = request.getParameter("exp_date"); 
			String prd_str = request.getParameter("prd_str"); 
			String shipping_price = request.getParameter("shipping_price"); 
			String prd_size = request.getParameter("prd_size"); 
			String is_sideoption = request.getParameter("is_sideoption"); 
			String side_optionname = request.getParameter("side_optionname"); 
			String allergy_info = request.getParameter("allergy_info"); 
			String ingredient_info = request.getParameter("ingredient_info"); 
			String discount_rate = request.getParameter("discount_rate"); 
			String sales = request.getParameter("sales"); 
			String is_giftcard = request.getParameter("is_giftcard"); 
			
			
			ProdManageDTO dto = new ProdManageDTO();
			dto.setPrd_code(prd_code);
			dto.setCat_code(cat_code);
			dto.setStock(stock);
			dto.setPrd_name(prd_name);
			dto.setPrd_info(prd_info);
			dto.setDetail_content(detail_content);
			dto.setDetail_content2(detail_content2);
			dto.setDetail_content3(detail_content3);
			dto.setDetail_content4(detail_content4);
			dto.setPrd_prc(prd_prc);
			dto.setPrd_point(prd_point);
			dto.setRating(rating);
			dto.setExp_date(exp_date);
			dto.setPrd_str(prd_str);
			dto.setShipping_price(shipping_price);
			dto.setPrd_size(prd_size);
			dto.setIs_sideoption(is_sideoption);
			dto.setSide_optionname(side_optionname);
			dto.setAllergy_info(allergy_info);
			dto.setIngredient_info(ingredient_info);
			dto.setDiscount_rate(discount_rate);
			dto.setSales(sales);
			dto.setIs_giftcard(is_giftcard);

			
			WriteService writeService = WriteService.getInstance();
			int rowCount = writeService.write(dto);
		
			if (rowCount == 1) {
			       String location = "productlist.asp";
			       response.sendRedirect(location);
			} 
		}else {  // GET X, POST X
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}
		
		return null;
	
	}
}


