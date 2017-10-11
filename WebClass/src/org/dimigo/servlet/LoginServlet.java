package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pwd");
		boolean result=false;
		if(id.equals("Stoad@sto.ad")&&pw.equals("qwe123")){
			result=true;
		}
		HttpSession session=request.getSession();
		if(result){
			UserVo ud=new UserVo();
			ud.setId(id);
			ud.setName("Stoad");
			ud.setNickname("Stoads");
			session.setAttribute("key",ud);
			RequestDispatcher rd=request.getRequestDispatcher("jsp/home.jsp");
			rd.forward(request,response);
		}
		else{
			request.setAttribute("error",1);
			RequestDispatcher rd=request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
	}

}
