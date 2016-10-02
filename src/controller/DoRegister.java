package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.CustomerService;

@WebServlet("/doRegister")
public class DoRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DoRegister() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String checkPassword = request.getParameter("checkPassword");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		
		String page = null;
		
		CustomerService service = CustomerService.getInstance();
		Customer customer = new Customer(id, password, name, gender, email, phone, birth);
		Customer customerRegister = service.addCustomer(customer);
		
		if(customerRegister != null && password.equals(checkPassword)){
			page = "/view/registerSuccess.jsp";
			request.setAttribute("customer", customer);
		}
		else{
			page = "/view/registerFailed.jsp";//중복된 아이디가 존재하는 경우. 또는 비밀번호와 비밀번호 확인이 일치하지 않는경우
			request.setAttribute("customer", customer);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);//포워딩
	}

}
