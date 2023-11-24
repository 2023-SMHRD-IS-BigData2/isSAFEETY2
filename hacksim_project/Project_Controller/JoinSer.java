package Project_Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Project_Model.Member;

@WebServlet("/JoinSer")
public class JoinSer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[JoinService]");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		Member vo = new Member(id, pw, name, email, gender, age);
		
		int cnt = new Project_Model.MemberDAO().joinMember(vo);
		
		System.out.println("cnt : " + cnt);
		
		if (cnt > 0) {
			System.out.println("회원가입 성공!");
			response.sendRedirect("Login.jsp");
		} else {
			System.out.println("회원가입 실패!");
			response.sendRedirect("Join.jsp");
		}
		
	}

}
