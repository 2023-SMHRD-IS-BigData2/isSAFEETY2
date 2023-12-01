package Project_Database;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	// SqlSessionManager 만들기
	
	// static 블록 : 객체를 호출할 때 무조건 실행되는 부분
	public static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			// mybatis 환경설정 파일 경로
			String resource = "Project_Database/mybatis-config.xml";
			
			// xml파일을 읽어내기 위해 inputStream 여는 것!
			InputStream inputStream = Resources.getResourceAsStream(resource);
			
			// SqlSessionFactory : connection객체가 여러 개인 Connection Pool
			sqlSessionFactory =
			  new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
	
}
