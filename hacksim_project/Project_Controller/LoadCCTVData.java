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

@WebServlet("/LoadCCTVData")
public class LoadCCTVData extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //System.out.println("LoadData 호출!");
        response.setCharacterEncoding("UTF-8");

		
		BufferedReader br = null;
		String line;
		String cctv_path = "C:/seoul_cctv_UTMK.csv";
		
		String[] cctv_temp;			// CCTV의 좌표가 담겨있는 csv파일에서 한줄씩읽어올때 사용할 temp변수
		// 일반2차원배열
		//Float[][] cctv_coordinates = new Float[83734][2];
		Float[][] cctv_coordinates = new Float[100][2]; 	
		
		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(cctv_path), "UTF-8"));
			// br = new BufferedReader(new FileReader(path)); // 이렇게도 가능
			int cnt = 0;
			while ((line = br.readLine()) != null) {
				// String[] temp = line.split("\t"); // 탭으로 구분
				cctv_temp = line.split(","); // 쉼표로 구분
				
				 // // 전체출력 for(int i=0; i<temp.length; i++) {
				 // System.out.print((i+1)+"열: "+temp[i]); if(i!=temp.length-1) {
				 // System.out.print(", "); } else { System.out.println(); } }
				 			
				cctv_coordinates[cnt][0] = Float.parseFloat(cctv_temp[0]);
				cctv_coordinates[cnt][1] = Float.parseFloat(cctv_temp[1]);
				cnt++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Gson gson = new Gson();

		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		
		// CCTV의 좌표를 보내줌
		String cctvJson = gson.toJson(cctv_coordinates);
		System.out.println(cctvJson);
		out.print(cctvJson);
		
	}
}
