package Project_Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Project_Model.MemberDAO;

@WebServlet("/DeleteMemSer")
public class DeleteMemSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		int DeleteMember = new MemberDAO().DeleteMember(id);
		
		if(DeleteMember > 0) {
			System.out.println("회원탈퇴 성공");
		}else {
			System.out.println("회원탈퇴 실패");
		}
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		response.sendRedirect("Main.jsp");
	}

}
