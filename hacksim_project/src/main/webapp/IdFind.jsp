<%@page import="Project_Model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Id Find - isSAFETY</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
    
    <!-- 아이디 가져오기 -->
    <%
		//Member LoginMember = (Member)session.getAttribute("LoginMember");
		String FindId = (String)session.getAttribute("FindId");
		//if(LoginMember != null){
			
		//System.out.print(LoginMember.getEmail());
		
		//}
	%>
    
	    <!-- 아이디 찾기 레이아웃 -->
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
            
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">아이디 찾기</h3></div>
                                    <div class="card-body">
                                        <div class="small mb-3 text-muted">이름과 이메일 주소를 입력하시면 아이디를 알려드립니다.</div>
                                        
                                        <!-- form 태그 -->
                                        <form action="IdFindSer" method="post">
                                        
                                        	<!-- 이름 입력 -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputName" name="name" type="text" placeholder="이름을 입력해주세요." />
                                                <label for="inputName">이름</label>
                                            </div>
                                            
                                            <!-- 이메일 입력 -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" name="email" type="email" placeholder="name@example.com" />
                                                <label for="inputEmail">이메일</label>
                                            </div>
                                            
                                            <!-- 아이디 가져오기 -->
                                            <% if(FindId == null){ %>
                                            	
                                           <% }else { %>
                                           		<p> 아이디 : <%= FindId %> </p>
                                           <% } %>
                                            
                                            <!-- 비밀번호 찾기 -->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="PasswordFind.jsp">비밀번호 찾기</a>
                                            </div>
                                            
                                            <!-- 다시 로그인 -->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="Login.jsp">다시 로그인하러 가기</a>
                                                <input type="submit" value="아이디 찾기" class="btn btn-primary">
                                            </div>
                                        </form>
                                        <!-- form 끝 -->
                                        
                                    </div>
                                    
                                    <!-- 회원가입 필요하면 클릭 -->
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="Join.jsp">회원가입이 필요하시면 클릭!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            
            <!-- footer -->
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">isSAFETY - 팀 발버둥(정윤오, 임다이, 이상훈, 안서혁)</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
        <!-- 스크립트 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
