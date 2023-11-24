package Project_Controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

@WebServlet("/LoadPoliceData")
public class LoadPoliceData extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //System.out.println("LoadData 호출!");
        response.setCharacterEncoding("UTF-8");

		
		BufferedReader br = null;
		String line;
		String policeOfiice_path = "C:/seoul_policeOfiice_UTMK.csv";
		
		String[] policeOfiice_temp;	// 경찰서의 좌표가 담겨있는 csv파일에서 한줄씩읽어올때 사용할 temp변수
		// 일반2차원배열
		Float[][] policeOfiice_coordinates = new Float[243][2]; 
		

		
		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(policeOfiice_path), "UTF-8"));
			int cnt = 0;
			while ((line = br.readLine()) != null) {
				policeOfiice_temp = line.split(","); // 쉼표로 구분
				
				policeOfiice_coordinates[cnt][0] = Float.parseFloat(policeOfiice_temp[0]);
				policeOfiice_coordinates[cnt][1] = Float.parseFloat(policeOfiice_temp[1]);
				cnt++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Gson gson = new Gson();

		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		
		// 경찰서의 좌표를 보내줌
		String policeJson = gson.toJson(policeOfiice_coordinates);
		System.out.println(policeJson);
		out.print(policeJson);
		
	}
}
