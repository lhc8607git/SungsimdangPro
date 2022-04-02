package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ProductDTO;
import service.ProductService;
import service.Special6Service;

public class ProductHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String prd_code = request.getParameter("prd_code");
		
		ProductService contentService = ProductService.getInstance();
		Special6Service spe6Service = Special6Service.getInstance();
		ProductDTO dto = contentService.selectOne(prd_code);
		List<ProductDTO> spe6list = spe6Service.select();
		
		request.setAttribute("dto", dto);
		request.setAttribute("spe6list", spe6list);
		
		// content.jsp
		return "content";
	}

}
