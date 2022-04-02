package command.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.ProductDTO;
import service.ProductService;

public class BestHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ProductService productService =  ProductService.getInstance();
		
		List<ProductDTO> bestList = productService.bestList();
		request.setAttribute("bestList", bestList);
		
		return "/product/best100";
	}
	
	

}
