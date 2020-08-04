<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/style.css">
    <title>메인화면</title>
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
<h1 class="title">적립금 내역</h1>
    
    <div class="div_k">
        <div class="div_order">
            <table class="menubar">
                <tr>
                    <th><a href="#">주문조회</a></th>
                </tr>
                <tr>
                    <th><a href="#">할인쿠폰</a></th>
                </tr>
                <tr>
                    <th><a href="#">적립금내역</a></th>
                </tr>
                <tr>
                    <th><a href="#">장바구니</a></th>
                </tr>
                <tr>
                    <th><a href="#">관심상품</a></th>
                </tr>
                <tr>
                    <th><a href="#">회원정보</a></th>
                </tr>
                <tr>
                    <th><a href="#">내 게시글</a></th>
                </tr>
            </table>
        </div>

        <div class="div_order2">
            <table class="table_list">
                <colgroup>
                    <col width=15%>
                    <col width=70%>
                    <col width=15%>
                </colgroup>
                <tr>
                    <th>날짜</th>
                    <th>적립내역</th>
                    <th>적립금</th>
                </tr>
                <tr>
                    <td colspan="6">적립내역이 없습니다</td>
                </tr>
            </table>
        </div>
    </div>
<%@ include file="common/footer.jsp" %>
</body>
</html>