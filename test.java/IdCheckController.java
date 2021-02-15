package com.passionStudy.passion.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.passionStudy.passion.member.model.dao.MemberDao;

/**
 * Servlet implementation class MemberIdCheckController
 */
@WebServlet("/MemberIdCheckController")
public class MemberIdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberIdCheckController() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String  = request.getParameter("userid");
		
		int count = new MemberService().idCheck(userId);
		
		if(count > 0) {
			response.getWriter().print("fail");
		}else {
			response.getWriter().print("success");
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