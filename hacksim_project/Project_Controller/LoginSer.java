package Project_Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Project_Model.Member;
import Project_Model.MemberDAO;

@WebServlet("/LoginSer")
public class LoginSer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[LoginService]");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		Member vo = new Member(id, pw);
		
		Member LoginMember = new MemberDAO().LoginMember(vo);
		HttpSession session = request.getSession();
		if(LoginMember != null) {
			System.out.println("로그인 성공!");
			session.setAttribute("LoginMember", LoginMember);
			response.sendRedirect("Main.jsp");
		}else {
			System.out.println("로그인 실패!");
			response.sendRedirect("Login.jsp");
		}
		
	}

}
