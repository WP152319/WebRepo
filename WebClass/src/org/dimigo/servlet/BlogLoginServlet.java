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
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =request.getRequestDispatcher("myblog2304/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String name = "테스트아이디";
		String pwd=request.getParameter("pwd");
		System.out.printf("id: %s, pwd: %s\n",id,pwd);
		String sen = "test@naver.com";	
		
		response.setContentType("text/html;charset-utf-8");
		
		// id, pwd 정확성 체크
		boolean result=false;
		
		if(id.equals(sen)){
			result = true;
		}
		
		if(result){
			//세션에 사용자 정보생성
			HttpSession session=request.getSession();
			
			UserVo user=new UserVo();
			user.setId(id);
			user.setName(name);
	
			session.setAttribute("user", user);
		
			RequestDispatcher rd =request.getRequestDispatcher("myblog2319/home.jsp");
			rd.forward(request, response);
		}
	
		else {
			request.setAttribute("msg", "error");
			RequestDispatcher rd =request.getRequestDispatcher("myblog2319/login.jsp");
			rd.forward(request, response);	
		}
	}

}
