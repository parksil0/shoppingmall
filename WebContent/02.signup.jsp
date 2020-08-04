<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/style.css">
    <title>가입 동의서 화면</title>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>  
	<script type="text/javascript">

	$(document).ready(function(){
		var jbOffset = $('.menu1').offset();
		$(window).scroll(function(){
			if($(document).scrollTop()>jbOffset.top ){
				$('.menu1').addClass('jbFixed');
			}
			else {
				$('.menu1').removeClass('jbFixed');
			}
		});
	});

	$(document).ready(function(){
		$('#ButSubmit').click(function(e){
			e.preventDefault();
	
		if($("#chkbox1").is(':checked')){
		} else	{
			//alert("이용약관에 동의 해주세요.");
		}
		
		if($("#chkbox2").is(':checked')){	
		} else {
			//alert("이용약관에 동의 해주세요.");
		}
	
		if($("#chkbox3").is(':checked')){
			$('form#clickchk').submit();
		} else {
			alert("이용약관에 동의 해주세요.");
		}
		
		}); 
	});

	$(function(){ //체크박스 전체 동의 
		$("#check_all").click(function(){
			var chk = $(this).is(":checked");
			if(chk){
				$(".join_form1 input").prop('checked',true);
			} else {
				$(".join_form1 input").prop('checked',false);
				
			}
			
		});
	});
</script>
</head>
<body>
<% if(session.getAttribute("userid") == null) { %>
	<%@ include file="common/header.jsp" %> 
<%
	} else { %>
	<%@ include file="common/headerLogin.jsp" %>	
<%
	}
%>
    
    <!--전체 태그-->
    
    <div class="whole_form">

        <!--회원가입 창-->
        <div class="join_chang">
            <h2>JOIN US</h2>
            <p style="color: gray; ">비트마켓 회원가입으로 다양한 혜택을 누리세요.</p>
        </div>

        <!-- 회원가입 전체동의항목-->
        <form id = "clickchk" method="post" action="03.signup2.jsp">
        	
	        <div class="join_form">
	            <input type="checkbox" class="join-checkbox" id="check_all">전체동의
	        </div>

        <!-- 회원가입 이용약관 -->  
	        <div class="join_form">
	            <div class="join_form1">
	                <input type="checkbox" class="join-checkbox" name="clickchk" id="chkbox1">
	               	이용약관
	          	</div>

	            <!-- 회원가입 개인정보수집(내용보기포함) -->    
	            <div class="join_form1">
	                <input type="checkbox" class="join-checkbox" name="clickchk" id="chkbox2">
	                   	 개인정보 수집 및 이용 안내 <u>내용보기</u></p>
	            </div>
	
	            <!-- 회원가입 개인정보수집2(내용보기포함) -->  
	            <div class="join_form1">
	                <input type="checkbox" class="join-checkbox" name="clickchk" id="chkbox3">
	               	 개인정보 처리위탁 <u>내용보기</u></p>
	            </div>
        	</div>

        <!-- 회원가입 마케팅 동의항목 --> 
        <div class="join_form" style="border-bottom: solid 1px gainsboro;">
        	<div class="join_form1" >
	            <input type="checkbox" class="join-checkbox" name="clickchk" id="chkbox" style="float: left;">
	            <p style="float: left;">마케팅 수신 동의(</p>
	            <input type="checkbox" class="join-checkbox" style="float: left; ">
	            <p style="float: left;">이메일</p>
	            <input type="checkbox" class="join-checkbox" style="float: left;">
	            <p style="float: left;">SMS)</p>
            	<br>
	            <div class="etc">
	                <p style="color: gray; font-size: 0.9em;"> 
	               	 쇼핑몰에서 제공하는 신상품소식/할인쿠폰을 무상으로 보내드립니다!</p><br>
	        
	                <p style="color: gray; font-size: 0.9em;"> 
	               	 단, 상품 구매정보는 수신동의 여부 관계없이 발송됩니다.</p><br>
	                <p style="font-weight:bold;"> 제공동의 하지 않으셔도 서비스 이용에는 문제 없습니다.</p>
	            </div>
            </div>
        </div>
        </form>
        
        <!--이용약관-->
        <div class="useContract1">
            <p style="font-size: 0.9em; margin-bottom: 10px;">이용약관</p>
            <div class="useContract">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </div>
        </div>

        <!--개인정보 수집.이용-->
        <div class="useContract1">
            <p style="font-size: 0.9em; margin-bottom: 10px;">개인정보 수집 및 이용</p>
            <table>
                <thead>
	                <tr>
	                    <th>구분</th>
	                    <th>목적</th>
	                    <th>항목</th>
	                    <th>보유기간</th>
	                </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>필수정보</th>
                        <td >회원제 서비스 이용 / 본인 확인</td>
                        <td>이름, 아이디, 비밀번호, 생일, 성별, 이메일, 휴대폰 번호</td>
                        <td>회원 탈퇴 후 5일까지</td>
                    </tr>
                    <tr>
                        <th>선택정보</th>
                        <td>마케팅활용(이벤트, 맞춤형 광고)</td>
                        <td>휴대폰, 이메일, 쿠키정보</td>
                        <td>회원 탈퇴 후 5일까지</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--개인정보 처리 위탁-->
        <div class="useContract1" style="margin-bottom:1%">
            <p style="font-size: 0.9em;">개인정보 처리위탁</p><br>
            <table>
                <colgroup>
                    <col width="20%" />
                </colgroup>
                <thead>
                	<tr>
	                    <th>수탁자</th>
	                    <th>목적</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>(주)SIRI하우스</th>
                        <td>고객정보 DB시스템 위탁 운영, 주문 수집</td>
                    </tr>

                    <tr>
                        <th>(주)충진의 충성배송</th>
                        <td>상품 배송업무 및 서비스 제공</td>
                    </tr>

                    <tr>
                        <th>(주)4Dong결제주식회사</th>
                        <td>휴대폰 본인확인 서비스</td>
                    </tr>

                    <tr>
                        <th>(주)돈벌레권노미</th>
                        <td>휴대폰 및 신용카드, 실시간 계좌이체</td>
                    </tr>
                </tbody>
            </table>
        </div>
		
        <!--가입 버튼 누르면 가입 페이지로 이동-->
        <!--input type="checkbox" id="chkbox" name="clickchk">모든 항목에 동의 하였습니다.--><br>
         
        <div class="join_form1">
        <input type="checkbox" id="chkbox" name="clickchk">모든 항목에 동의 하였습니다.</div>
     	<button id="ButSubmit" class ="ajoin_btn">가입하기</button>
    </div>
    
    <%@ include file="common/footer.jsp" %> 
</body>
</html>