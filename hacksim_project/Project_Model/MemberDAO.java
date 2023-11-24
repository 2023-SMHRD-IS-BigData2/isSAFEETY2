package Project_Model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Project_Database.SqlSessionManager;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	// 회원가입
	public int joinMember(Member vo) {
		int cnt = 0;

		try {

			cnt = sqlSession.insert("Project_Database.MemberMapper.joinMember", vo);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return cnt;
	}

	// 로그인
	public Member LoginMember(Member vo) {
		
		Member LoginMember = null;

		try {

			LoginMember = sqlSession.selectOne("Project_Database.MemberMapper.LoginMember", vo);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return LoginMember;
	}

	// 아이디 찾기
	public String FindId(Member vo) {
		
		String FindId = null;

		try {

			FindId = sqlSession.selectOne("Project_Database.MemberMapper.FindId", vo);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return FindId;
	}

	// 비밀번호 찾기
	public String FindPw(Member vo) {
		
		String FindPw = null;

		try {

			FindPw = sqlSession.selectOne("Project_Database.MemberMapper.FindPw", vo);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return FindPw;
	}
	
	// 아이디 중복 확인
	public boolean IdCheck(String inputId) {
		
		boolean checkId = false;
		
		try {
			
			checkId = sqlSession.selectOne("Project_Database.MemberMapper.IdCheck", inputId);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return checkId;
		
	}

	// 이메일 중복 확인
	public boolean emailCheck(String inputE) {
		
		boolean checkE = false;
		
		try {
			
			checkE = sqlSession.selectOne("Project_Database.MemberMapper.emailCheck", inputE);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return checkE;
	}

	// 회원탈퇴
	public int DeleteMember(String id) {
		
		int DeleteMember = 0;
		
		try {
			
			DeleteMember = sqlSession.delete("Project_Database.MemberMapper.DeleteMember", id);
			
		} catch (Exception e) {
			
		} finally {
			sqlSession.close();
		}
		
		return DeleteMember;
	}
	
}
