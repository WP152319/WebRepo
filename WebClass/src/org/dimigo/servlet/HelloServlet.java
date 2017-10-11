package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/helloservlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		response.getWriter().append("Served at: "+id+" "+name+" ").append(request.getContextPath());
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out=response.getWriter();
		out.println("<!DOCTYPE HTML>");
		out.println("<html><head>");
		out.println("<title>FcSvlt</title>");
		out.println("</head><body>");
		out.println("<h1>Servlet</h1>");
		out.println("</body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("DoPost is Called\n");
		doGet(request, response);
	}

}
