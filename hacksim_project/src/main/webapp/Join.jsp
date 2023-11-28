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
        <title>Join - isSAFETY</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
    
    	<!-- 회원가입 레이아웃 -->
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
            
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">회원가입</h3></div>
                                    <div class="card-body">
                                    
                                    	<!-- form 태그 -->
                                        <form action="JoinSer" method="post">
                                        
                                        	<!-- 아이디 입력 -->
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputId" name="id" type="text" placeholder="아이디를 적어주세요." />
                                                        <!-- <input class="check" type="button" value="아이디 중복 체크" /> -->
                                                        <!-- <span id="resultCheck1"></span> -->
                                                        <label for="inputId">아이디</label>
                                                    </div>
                                                </div>
                                             
                                             	<!-- 이메일 입력 -->
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputEmail" name="email" type="email" placeholder="name@example.com" />
                                                        <!-- <input class="check" type="button" value="이메일 중복 체크"> -->
                                                        <label for="inputEmail">이메일</label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <!-- 비밀번호 입력 -->
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" name="pw" type="password" placeholder="비밀번호를 적어주세요." />
                                                        <label for="inputPassword">비밀번호</label>
                                                    </div>
                                                </div>
                                                
                                                <!-- 이름 입력 -->
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputName" name="name" type="text" placeholder="이름을 적어주세요." />
                                                        <label for="inputName">이름</label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <!-- 나이 입력 -->
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputAge" name="age" type="number" placeholder="나이를 적어주세요." />
                                                        <label for="inputAge">나이</label>
                                                    </div>
                                                </div>
                                                
                                                <!-- 성별 입력 -->
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <label for="inputGender"></label>
                                                        <div class="gender">
                                                        <mwc-textfield>
                                                        남자 <input class="form-control" id="inputGender" name="gender" type="radio" value="men" />
                                                        여자 <input class="form-control" id="inputGender" name="gender" type="radio" value="women" />
                                                        </mwc-textfield>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <!-- 버튼 입력 -->
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                <input type="submit" value="회원가입" class="btn btn-primary btn-block">
                                                </div>
                                            </div>
                                        </form>
                                        <!-- form 끝 -->
                                        
                                    </div>
                                    
                                    <!-- 회원가입 있으면 로그인 -->
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="Login.jsp">회원가입이 되어있다면 로그인!</a></div>
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
<!--         <script type="text/javascript">
				function checkId(){
					var inputId = $('#inputId').val();
					console.log(inputId);
					
					$.ajax({
						// 어디로 요청 할 것인지
						url : 'IdCheckSer',
						// 요청데이터(json, {key : value})
						data : {'inputId' : inputId},
						// 요청방식
						type : 'get',
						// 요청 성공시
						success : function(data){
							if(data){
								$('#resultCheck1').text('이미 사용 중인 아이디')
							}else{
								$('#resultCheck1').text('사용할 수 있는 아이디')
							}
						},
						// 요청 실패시
						error : function(){
							console.log("통신 실패");
						}
					})
					
				}
				
				function checkE(){
					var inputE = $('#inputE').val();
					console.log(inputE);
					
					$.ajax({
						// 어디로 요청 할 것인지
						url : 'EmailCheckSer',
						// 요청데이터(json, {key : value})
						data : {'inputE' : inputE},
						// 요청방식
						type : 'get',
						// 요청 성공시
						success : function(data){
							if(data){
								$('#resultCheck2').text('이미 사용 중인 이메일')
							}else{
								$('#resultCheck2').text('사용할 수 있는 이메일')
							}
						},
						// 요청 실패시
						error : function(){
							console.log("통신 실패");
						}
					})
					
				}
			</script> -->
    </body>
</html>
    