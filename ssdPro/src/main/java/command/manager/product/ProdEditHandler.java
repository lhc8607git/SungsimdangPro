package command.manager.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;

import service.manager.Prod.EditService;

public class ProdEditHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*
		 *  String writer;
		 *  String subject;  
		 *  String content;  	
		*/	
		
		if( request.getMethod().equals("GET") ) {
			return "productedit";
		}else if( request.getMethod().equals("POST") ) {  // P

			//23개
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
			
		
			EditService editService = EditService.getInstance();
			int rowCount = editService.edit(prd_code, cat_code, stock, prd_name, prd_info, detail_content, detail_content2, detail_content3, detail_content4, prd_prc, prd_point, rating, exp_date, prd_str, shipping_price, prd_size, is_sideoption, side_optionname, allergy_info, ingredient_info, discount_rate, sales, is_giftcard);
		
		
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