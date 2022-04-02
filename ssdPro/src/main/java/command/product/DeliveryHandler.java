package command.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.DeliveryDTO;
import domain.ProductDTO;
import service.DeliveryService;
import service.ProductService;

public class DeliveryHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		DeliveryService deliveryService =  DeliveryService.getInstance();
		
		// deliveryList.asp?deliveryType=delivery
		String deliveryType = request.getParameter("deliveryType");
		
		List<DeliveryDTO> list = deliveryService.deliveryList(deliveryType);
		
		request.setAttribute("list", list);
		
		return "/product/deliveryList";
	}

}
