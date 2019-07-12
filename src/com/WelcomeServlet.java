package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public WelcomeServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		pw.println("<h1>Unauthorised access to this page</h1>");
		pw.println("<h3>Please<a href='login.html'>Login</a> first</h3>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("t1");
		String pass=request.getParameter("t2");
		PrintWriter out=response.getWriter();
		if(name.contentEquals(pass)) {
			RequestDispatcher rd=request.getRequestDispatcher("final");
			rd.forward(request, response);
		}
		else
		{
			out.println("<h1> sorry Invalid Credentials.....</h1>");
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.include(request, response);
		}
	}

}
