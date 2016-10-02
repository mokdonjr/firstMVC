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

@WebServlet("/doLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DoLogin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		String page = null;
		
		//비지니스 로직! Java Class인 CustomerService작성! 그에 따른 모델인 Customer도 작성!
		CustomerService service = CustomerService.getInstance();
		Customer customer = service.login(id, password);
		
		if(customer == null){
			page="/view/loginFailed.jsp";
			request.setAttribute("id", id);//틀린 id를 loginFailed.jsp로 전달하는 것. 구현은 안함
		}
		else{
			page="/view/loginSuccess.jsp";
			request.setAttribute("customer", customer);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);//포워딩
	}

}
