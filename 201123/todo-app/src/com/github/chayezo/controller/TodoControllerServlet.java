package com.github.chayezo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.github.chayezo.domain.Todo;
import com.github.chayezo.repository.TodoRepository;

/**
 * Servlet implementation class TodoControllerServlet
 */
@WebServlet("/TodoControllerServlet")
public class TodoControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private TodoRepository repository = TodoRepository.getInstance(); 
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TodoControllerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * [HTTP Request]
	 * POST /todo-app/TodoControllerServlet HTTP/1.1
	 * Content-Length: 38
	 * Content-Type: application/x-www-form-urlencoded
	 * 
	 * whattodo=do nothing&myname=Yejin Cha
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String whatTodo = request.getParameter("whattodo");		// do something
		String myName = request.getParameter("myname");			// Yejin Cha
		final Todo todo = new Todo(whatTodo, myName);
		repository.saveTodo(todo);
		/**
		 * HTTP/1.1 302 Found
		 * Location: index.jsp
		 * 
		 * Location에 명시된 곳으로 이동하라고 브라우저에게 명령함.
		 * */
		response.sendRedirect("index.jsp");
	}

}
