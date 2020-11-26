package kr.or.iei;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet 
 */
@WebServlet("/HelloServlet")
public class HelloServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	public void destroy() {
		getServletContext().log("���̱¹���");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("ȣ���");
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,		// ��Ĺ�� ���� ����ü
						HttpServletResponse response		// ��Ĺ�� ���� ����ü
						) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Hello Servlet!");
		System.out.println(request.getMethod());
	}
	
	/**
	 *@see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response) 
	 */
	protected void doPost(HttpServletRequest request,
						HttpServletResponse response
						) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
