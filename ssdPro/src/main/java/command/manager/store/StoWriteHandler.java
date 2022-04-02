package command.manager.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import domain.StoManageDTO;
import service.manager.store.WriteService;

public class StoWriteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request
			, HttpServletResponse response) throws Exception {
		
		if( request.getMethod().equals("GET") ) {
			return "storewrite";
		}else if( request.getMethod().equals("POST") ) {

			String manager_code = request.getParameter("manager_code");
			int is_global = Integer.parseInt( request.getParameter("is_global") );
			String region = request.getParameter("region"); 
			String name = request.getParameter("name"); 
			String brand = request.getParameter("brand"); 
			String tel = request.getParameter("tel"); 
			String address = request.getParameter("address"); 
			String operating_time = request.getParameter("operating_time"); 
			String lat = request.getParameter("lat"); 
			String lng = request.getParameter("lng"); 
			
			StoManageDTO dto = new StoManageDTO();
			dto.setManager_code(manager_code);
			dto.setIs_global(is_global);
			dto.setRegion(region);
			dto.setName(name);
			dto.setBrand(brand);
			dto.setTel(tel);
			dto.setAddress(address);
			dto.setOperating_time(operating_time);
			dto.setLat(lat);
			dto.setLng(lng);
				
		
			WriteService writeService = WriteService.getInstance();
			int rowCount = writeService.write(dto);
		
		if (rowCount == 1) {
			String location = "storelist.asp";
			response.sendRedirect(location);
		} 
		}else {  // GET X, POST X
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}
		
		return null;
	
	}
}


