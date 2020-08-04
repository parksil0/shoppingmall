<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% System.out.println("로그인헤더"); %>
<%
	String useridChk = (String)session.getAttribute("userid");
	System.out.println("headerLogin 로그인 아이디 : " + useridChk); 
%>
<header>
<script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	function logout() {
		location.href="00.logoutAction.jsp";
	}
</script>
 <div class="eve">
	<div class="logo">
        <h1><img src="images/logo.jpg" onclick="javascript:location.href='01.main.jsp'"></h1>
        <form name="myForm" action="controller" method="POST">
		<input type="hidden" name="type" value="viewCartlist" />
		<input type="hidden" name="userid" value="${userid }" />
		</form>
        <img class = "cart" src="images/cart.jpg" style="cursor: pointer;" onclick="javascript:document.myForm.submit();">
	</div>
	<br><br><br>
        <!--회원가입, 로그인, 마이페이지 전체-->
        <ul class="user">
			<!-- 회원가입, 로그인-->
			<li>
			<div id="btn_group" style="padding :0px 5px 0px 0px;">
				<form method="post">
					<input type="button" id="login_btn" value="로그아웃" onclick="logout()"
							style="font-weight: bold">
					<input type="hidden" name="userid" value="none">
				</form>
			</div>
			</li>
            <!--마이페이지 드롭박스-->
            <li class = "mypage">
                <select style="width:100px;font-size: 14px; font-weight: bold;"onchange="location.href=this.value" >
                        <option>마이페이지</option>
                        <option value="">주문조회</option>
                        <option value="">위시리시트</option>
                        <option value="">쿠폰</option>
                        <option value="">게시판</option>
                        <option value="">회원정보</option>
                </select>
            </li>
            <!-- 셀러등록 드롭박스 -->
            <li class = "sellerRegister" style="padding:0px 0px 0px 10px;">
                <select style="width:100px;font-size: 14px; font-weight: bold;"
                onchange="location.href=this.value" >
                    <option>상점 정보</option>
                    <option value="">셀러 정보</option>
                    <option value="">상품등록</option>
                    <option value="">매출정보</option>
                    <option value="">게시판</option>
                    <option value="">회원정보</option>
                </select>
            </li>
        </ul>
        
        <!--카테고리 상단바-->
        <nav class="banner">
            <div class="menu1">
            <ul style="margin-bottom:3%;">
                <li><a href = "#">Best 10</a></li> 
                <li><a href = "#">신상 5%</a></li>
                <li><a href = "#">당일발송</a></li>
                <li><a href = "#">브랜드</a></li>
                <li><a href = "#">아우터</a></li> 
                <li><a href = "#">상의</a></li> 
                <li><a href = "#">블라우스</a></li> 
                <li><a href = "#">원피스</a></li> 
                <li><a href = "#">하의</a></li> 
                <li><a href = "#">신발&가방</a></li> 
                <li><a href = "#">악세사리</a></li> 
                <li><a href = "#">세일</a></li> 
                <li><a href = "#">여름특가세일</a></li> 
                <li><a href = "#">커뮤니티</a></li>
            </ul>
            </div>
        </nav>
    </div>
</header>
<br><br><br>
<hr id="line">