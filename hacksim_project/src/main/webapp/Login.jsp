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
        <title>Login - isSAFETY</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
    
    	<!-- 로그인 레이아웃 -->
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
            
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">로그인</h3></div>
                                    <div class="card-body">
                                    
                                    	<!-- form 태그 -->
                                        <form action="LoginSer" method="post">
                                        
                                        	<!-- 아이디 입력 -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputId" name="id" type="text" placeholder="id" />
                                                <label for="inputId">아이디</label>
                                            </div>
                                            
                                            <!-- 비밀번호 입력 -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" name="pw" type="password" placeholder="Password" />
                                                <label for="inputPassword">비밀번호</label>
                                            </div>
                                            
                                            <!-- 아이디 찾기 -->
                                            <div class="d-flex align-items-center justify-content-between mt4 mb-0">
                                                <a class="small" href="IdFind.jsp">아이디 찾기</a>
                                            </div>
                                            
                                            <!-- 비밀번호 찾기 -->
                                            <div class="d-flex align-items-center justify-content-between mt4 mb-0">
                                                <a class="small" href="PasswordFind.jsp">비밀번호 찾기</a>
                                                <input type="submit" value="로그인" class="btn btn-primary">
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
