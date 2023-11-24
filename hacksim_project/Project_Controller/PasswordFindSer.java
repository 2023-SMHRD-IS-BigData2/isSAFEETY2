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

@WebServlet("/PasswordFindSer")
public class PasswordFindSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[PasswordFindService]");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		
		Member vo = new Member(id, id);
		
		String FindPw = new MemberDAO().FindPw(vo);
		
		HttpSession session = request.getSession();
		if(FindPw != null) {
			System.out.println("비밀번호찾기 성공!");
			session.setAttribute("FindPw", FindPw);
			response.sendRedirect("PasswordFind.jsp");
		}else {
			System.out.println("비밀번호찾기 실패!");
			response.sendRedirect("PasswordFind.jsp");
		}
		
	}

}
