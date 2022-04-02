package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistence.MemberDAO;

@WebServlet("/idcheck.do")
public class IdCheck extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public IdCheck() {}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	               String id = request.getParameter("chkID2");
	               MemberDAO dao = new MemberDAO();
        
	               try {
			int count = dao.checkId(id);
			response.getWriter().print(count);
	               } catch (Exception e) {
			e.printStackTrace();
	               }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}