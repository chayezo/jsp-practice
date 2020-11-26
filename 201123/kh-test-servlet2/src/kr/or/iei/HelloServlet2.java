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
		getServletContext().log("πŸ¿Ã±¬πŸ¿Ã");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("»£√‚µ ");
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request,		// ≈Ëƒπ¿Ã ∏∏µÁ ±∏«ˆ√º
						HttpServletResponse response		// ≈Ëƒπ¿Ã ∏∏µÁ ±∏«ˆ√º
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
