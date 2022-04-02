package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ProductDTO;
import service.Best4Service;
import service.Daejeon4Service;
import service.Delivery4Service;
import service.Ktx4Service;
import service.New4Service;
import service.Pickup4Service;
import service.Special4Service;

public class DefaultHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Best4Service bestService = Best4Service.getInstance();
		Special4Service speService = Special4Service.getInstance();
		New4Service newService = New4Service.getInstance();
		Pickup4Service pickService = Pickup4Service.getInstance();
		Ktx4Service ktxService = Ktx4Service.getInstance();
		Delivery4Service delService = Delivery4Service.getInstance();
		Daejeon4Service daeService = Daejeon4Service.getInstance();

		List<ProductDTO> bestlist = bestService.select();
		List<ProductDTO> spelist = speService.select();
		List<ProductDTO> newlist = newService.select();
		List<ProductDTO> picklist = pickService.select();
		List<ProductDTO> daelist = daeService.select();
		List<ProductDTO> delilist = delService.select();
		List<ProductDTO> ktxlist = ktxService.select();

		request.setAttribute("bestlist", bestlist);
		request.setAttribute("spelist", spelist);
		request.setAttribute("newlist", newlist);
		request.setAttribute("picklist", picklist);
		request.setAttribute("daelist", daelist);
		request.setAttribute("delilist", delilist);
		request.setAttribute("ktxlist", ktxlist);
		
		return "default";
	}

}
