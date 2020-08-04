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
<h1 class="title">회원정보수정</h1>
    
    <div class="div_member">
        <table class="table_member">
            <tr>
                <th>이름</th>
                <td>
                    <input type="text" id="m_text">
                </td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td>
                    <select id="year">
                        <option>1992</option>
                    </select>
                </td>
                <td>
                    <select id="month">
                        <option>12</option>
                    </select>
                </td>
                <td>
                    <select id="day">
                        <option>8</option>
                    </select>
                </td>
                <td>
                    <input type=checkbox>&nbsp;&nbsp;남
                    <input type=checkbox>&nbsp;&nbsp;여
                </td>
            </tr>
            <tr>
                <th>아이디</th>
                <td>podongEbi</td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td>
                    <input type="text" id="m_text">
                </td>
            </tr>
            <tr>
                <th>비밀번호 확인</th>
                <td>
                    <input type="text" id="m_text">
                </td>
            </tr>
            <tr>
                <th>휴대전화</th>
                <td>
                    <select id="m_phone">
                        <option>010</option>
                        <option>011</option>
                        <option>016</option>
                        <option>017</option>
                    </select>
                </td>
                <td>
                    <input type="text" id="m_text2">-
                </td>
                <td>
                    <input type="text" id="m_text2">
                </td>
            </tr>
            <tr>
                <th>이메일 주소</th>
                <td>
                    <input type="text" id="m_text">&nbsp;@&nbsp;<input type="text" id="m_text">
                </td>
            </tr>
            <tr>
                <th>주소</th>
                <td>
                    <input type="text" id="m_text3">
                </td>
                <br><br>
                <th>상세주소</th>
                <td>
                    <input type="text" id="m_text3">
                </td>
            </tr>
        </table>
    </div>

    <div class="div_member2">
        <input type="button" value="확인" id="c_button3">&nbsp;&nbsp;
        <input type="button" value="취소" id="c_button1">
    </div>
<%@ include file="common/footer.jsp" %>
</body>
</html>