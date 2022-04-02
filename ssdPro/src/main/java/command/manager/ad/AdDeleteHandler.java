package command.manager.ad;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import service.manager.ad.DeleteService;

public class AdDeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String ad_code = request.getParameter("ad_code");
		
		int rowCount = 0;
		DeleteService deleteService = DeleteService.getInstance();
		rowCount = deleteService.delete(ad_code);
		
		if(rowCount == 1) {
			String location="adlist.asp";
			response.sendRedirect(location);
		}
		
		return null;
	}

}
