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
<h1 class="title">장바구니</h1>
    
    <div class="o_step">
        <ul>
            <li class="step1_1">
                <img src="images/step_buy1.png"><br><br>01.장바구니
            </li>
            <li class="step1_2">
                <img src="images/step_buy2.png"><br><br>02.주문서작성
            </li>
            <li class="step1_3">
                <img src="images/step_buy3.png"><br><br>03.주문완료
            </li>
        </ul>
    </div>
    
    <form method="post">
    
    <div class="div_k2">
        <div class="div_cart">
            <table class="table_cart">
                <colgroup>
                    <col width=5%>
                    <col width=20%>
                    <col width=30%>
                    <col width=10%>
                    <col width=5%>
                    <col width=10%>
                    <col width=10%>
                    <col width=10%>
                </colgroup>
                <tr>
                    <th>
                        <input type="checkbox">
                    </th>
                    <th>사진</th>
                    <th>상품명</th>
                    <th>수량</th>
                    <th>적립금</th>
                    <th>가격</th>
                    <th>배송비</th>
                    <th>처리</th>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>
                        <img src="images/dog02.png" alt="dog2">
                    </td>
                    <td>잭 (Jack)</td>
                    <td>
                        <input type="text" value="1" id="l_text">
                    </td>
                    <td>360원</td>
                    <td>36,000원</td>
                    <td>무료배송</td>
                    <td>
                        <input type="button" value="관심상품" id="l_button1"><br>
                        <input type="button" value="삭제" id="l_button2">
                    </td>
                </tr>
                
            </table>
        </div>

        <div class="div_cart2">
            <hr class="hr_line">
            <table class="table_price">
                <tr>
                    <th>총 금액</th>
                    <td>36,000원</td>
                </tr>
                <tr>
                    <th>총 결제금액</th>
                    <td>36,000원</td>
                </tr>
                <tr>
                    <td> </td>
                    <td>(적립금 : 360원)</td>
                </tr>
            </table>
            <hr class="hr_line">
        </div>
        
        <div class="div_cart3">
            <input type="button" value="계속 쇼핑하기" id="c_button1">&nbsp;&nbsp;
            <input type="button" value="장바구니 비우기" id="c_button2">&nbsp;&nbsp;
            <input type="button" value="주문하기" id="c_button3" onclick="view_order(this.form)">
        </div>
    </div>
    
    <input type="hidden" name="userid" value="podongEbi">
    </form>
<%@ include file="common/footer.jsp" %>
</body>

<script>
	function view_order(frm) {
		frm.action = "controller?type=view";
		frm.submit();
	}
</script>

</html>