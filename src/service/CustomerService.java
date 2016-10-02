package service;

import java.util.HashMap;
import java.util.Map;

import model.Customer;

//DoLogin.java에서 접근
//DoRegister.java에서 접근
//공유 class는 하나만 생성해야한다 - 'Singleton' 객체가 하나만 존재하며 여러 Servlet에서 공유한다. 전역변수
public class CustomerService {

	private Map<String, Customer> customerTable;
	
	/* 
	 * Singleton. 
	 * 
	 * 'instance'라는 static변수는 CustomerService클래스의 오직 한개의 객체
	 * final이기 때문에 초기화 한 순간부터 변경 불가
	 * 
	 */
	private static final CustomerService instance = new CustomerService();
	private CustomerService() {
		super();
		customerTable = new HashMap<String, Customer>();
		
		addCustomer(new Customer("bsc21c", "3310", "백승찬", "1", "mokdonjr@naver.com", "01071504498", "901125"));
	}
	public static CustomerService getInstance(){//외부에서 instance객체 get
		return instance;
	}
	
	// DoRegister.java에서 이용. 회원가입
	public Customer addCustomer(Customer customer){
		if(customerTable.containsKey(customer.getId())){
			return null; //중복된 아이디가 존재하는 경우.
		}
		else{
			customerTable.put(customer.getId(), customer);
			return customer;
		}
	}
	
	//DoLogin.java에서 이용. 로그인.
	public Customer login(String id, String password){
		if(customerTable.containsKey(id)){
			if(customerTable.get(id).getPassword().equals(password))
				return customerTable.get(id);
			else 
				return null;//아이디는 존재하나 비밀번호가 맞지 않는 경우
		}
		else
			return null;//아이디가 존재하지 않는 경우.
		
	}
	
	//회원가입 잘 되어있는지 관리자 확인용.
	public int showCustomerTable(){
		return customerTable.size();
	}
}
