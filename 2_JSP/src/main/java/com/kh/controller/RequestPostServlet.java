package com.kh.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPostServlet
 */
@WebServlet("/confirmPizza.do")
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("userName");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String message = request.getParameter("message");
		String pizza = request.getParameter("pizza");
		String[] topping = request.getParameterValues("topping");
		String[] side = request.getParameterValues("side");
		String payment = request.getParameter("payment");
	
		
		
		System.out.println("주문자 : " + userName);
		System.out.println("전번 : "+ phone);
		System.out.println("주소 : "+ address);
		System.out.println("메시지 : "+ message);
		System.out.println("pizza : "+ pizza);
		System.out.println("payment : "+ payment);
		
		
		if(topping == null) {
			System.out.println("토핑없다 이눔");
		}else {
			System.out.print("선택한 토핑은 : ");
			System.out.println( String.join("/", topping));
		}
		
		if(side == null) {
			System.out.println("사이드 없다 이눔식기");
		}else {
			System.out.print("선택한 사이드 : ");
			System.out.println( String.join("/ ", side));
		}
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
