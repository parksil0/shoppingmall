<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/style.css">
    <title>메인화면</title>
    
<body>
<% if(session.getAttribute("userid") == null) { %>
	<%@ include file="common/header.jsp" %> 
<%
	} else { %>
	<%@ include file="common/headerLogin.jsp" %>	
<%
	}
%>
    <h1 class="title">주문조회</h1>
    
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
                    <col width=5%>
                    <col width=20%>
                    <col width=15%>
                    <col width=35%>
                    <col width=15%>
                    <col width=10%>
                </colgroup>
                <tr>
                    <th>번호</th>
                    <th>주문번호</th>
                    <th>주문일자</th>
                    <th>상품명</th>
                    <th>결제금액</th>
                    <th>주문상태</th>
                </tr>
                <c:if test="${not empty order }">
                	<c:forEach var="order" items="${order }">
	               		<tr>
	                		<td>1</td>
	                		<td>${order.o_num }</td>
	                		<td>${order.o_date }</td>
	                		<td>${order.o_product }</td>
	                		<td>59,000원</td>
	                		<td>${order.o_con }</td>
	                	</tr>
	                </c:forEach>
                </c:if>
                <c:if test="${empty order }">
	                <tr>
	                    <td colspan="6">주문내역이 없습니다</td>
	                </tr>
				</c:if>
            </table>
        </div>
    </div>
    <%@ include file="common/footer.jsp" %>
</body>
</html>