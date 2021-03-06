package command.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.CommandHandler;
import domain.Member;
import domain.Order;
import persistence.MemberDAO;
import persistence.OrderDAO;


public class OrderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getSession().getAttribute("user") == null) {
			response.sendRedirect("/member/login.asp?redirect=/my/order_total.asp?mode=deliver");
			return null;
		} else {
			Member member = (Member) request.getSession().getAttribute("user");
			String memg_code = member.getMemg_code();
			String grade = new MemberDAO().getGrade(memg_code );
			int totalPay = new OrderDAO().getTotalPay(member.getMemb_code());
			
			request.setAttribute("grade", grade);
			request.setAttribute("totalPay", totalPay);
			return "/my/order_total";
		}
	}
}