package Project_Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Project_Model.Member;
import Project_Model.MemberDAO;

@WebServlet("/IdFindSer")
public class IdFindSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[IdFindService]");
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		Member vo = new Member(name, email, 0);
		
		String FindId = new MemberDAO().FindId(vo);
		
		HttpSession session = request.getSession();
		if(FindId != null) {
			System.out.println("아이디찾기 성공!");
			session.setAttribute("FindId", FindId);
			response.sendRedirect("IdFind.jsp");
		}else {
			System.out.println("아이디찾기 실패!");
			response.sendRedirect("IdFind.jsp");
		}
		
	}

}
