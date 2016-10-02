package controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.CustomerService;

@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Home() {    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String page = null;
		
		//관리자모드로 회원가입현황 확인하는페이지 BL
		CustomerService service = CustomerService.getInstance();
		int num = service.showCustomerTable();
		
		request.setAttribute("num", num);
		
		
		if(action.equals("login"))
			page = "/view/loginform.jsp";
		else if(action.equals("register"))
			page = "/view/registerform.jsp";
		else if(action.equals("forgot"))
			page = "/view/forgotform.jsp";
		else if(action.equals("showCustomers"))
			page = "/view/showCustomers.jsp";
		else 
			page = "/view/error.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);//포워딩
	}

}
