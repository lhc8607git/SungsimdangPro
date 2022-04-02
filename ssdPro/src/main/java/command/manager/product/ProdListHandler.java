package command.manager.product;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConn;

import command.CommandHandler;
import domain.ProdManageDTO;

import persistence.manager.ProdDAO;
import service.manager.Prod.ListService;

public class ProdListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ListService listService = ListService.getInstance();
		List<ProdManageDTO> list = listService.select();
		
		request.setAttribute("list", list);
	     		
		return "/manager/product/productlist";
	}
	
}
