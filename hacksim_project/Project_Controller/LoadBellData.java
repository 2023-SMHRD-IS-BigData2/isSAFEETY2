package com.map.controller;

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

@WebServlet("/LoadBellData")
public class LoadBellData extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("LoadData 호출!");
        response.setCharacterEncoding("UTF-8");

		
		BufferedReader br = null;
		String line;
		String emergencyBell_path = "C:/seoul_emergencyBell_UTMK.csv";
		
		String[] emergencyBell_temp;	// 비상벨의 좌표가 담겨있는 csv파일에서 한줄씩읽어올때 사용할 temp변수
		// 일반2차원배열
		Float[][] emergencyBell_coordinates = new Float[500][2]; 
		

		
		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(emergencyBell_path), "UTF-8"));
			int cnt = 0;
			while ((line = br.readLine()) != null) {
				emergencyBell_temp = line.split(","); // 쉼표로 구분
				
				emergencyBell_coordinates[cnt][0] = Float.parseFloat(emergencyBell_temp[0]);
				emergencyBell_coordinates[cnt][1] = Float.parseFloat(emergencyBell_temp[1]);
				cnt++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Gson gson = new Gson();

		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8");
		
		// 경찰서의 좌표를 보내줌
		String bellJson = gson.toJson(emergencyBell_coordinates);
		System.out.println(bellJson);
		out.print(bellJson);
		
		//System.out.println(emergencyBell_coordinates[0][0]);
		
	}
}
