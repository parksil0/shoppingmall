<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <title>메인화면</title>
    <script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
    <script>
        $(function(){
            $("#login_btn").click(function(){
                $(".lg").show();
            });
        });
    </script>
</head>
<body>
    <div class="logo">
        <h1>Bitmon</h1>
        <img class = "cart" src="images/cart.png" onclick="location.href"="#">
    </div>
    <!--카테고리-->
    <div class="menu">
    <nav>
        <ul>
            <li><a href = "#">Best 10</a></li> 
            <li><a href = "#">신상 5%</a></li>
            <li><a href = "#">당일발송</a></li>
            <li><a href = "#">브랜드</a></li>
            <li><a href = "#">시밀러룩</a></li> 
            <li><a href = "#">커뮤니티</a></li>
        </ul>
        <ul class="user">
        <!-- 회원가입, 로그인-->
            <div id = btn_group>
                <buttosn id= "login_btn" type="submit">로그인</button>
                <button id= "signup_btn" type="submit" onclick=location.href="signup.html">회원가입</button>
                </div>
            <!--마이페이지 드롭박스-->
            <li class = "mypage">
                <select style="width:100px;font-size: 14px; font-weight: bold;" 
                onchange="location.href=this.value" >
                    <option>마이페이지</option>
                    <option value="">주문조회</option>
                    <option value="">위시리시트</option>
                    <option value="">쿠폰</option>
                    <option value="">게시판</option>
                    <option value="">회원정보</option>
                </select>
            </li>
        </ul>
    </nav>
    </div>
    <hr id="line">
    <!-- 로그인 창-->
        <form method="POST" action="LoginAction.jsp" >
            <div class= "lg">
            <!--loginaction.jsp로 로그인 정보 보낼것임-->
            <h2>로그인</h2>
            <input type="text" class="lg-control" name="userId" placeholder="아이디" autocomplete="off" required><br>
            <input type="text" class="lg-control" name="userPassword" placeholder="비밀번호"><br>
            <input type= "checkbox" class="checkbox"><p style="text-align: left; margin-left:110px;">아이디 저장</p><br>
            <input type="button" class="lgf-control" value="로그인" onclick=""> <br> <br>
            <p style="text-align: left; margin-left:90px;">아이디/비밀번호 찾기</p>
            <input type="button" class= "lgs-control" value="회원가입" onclick=location.href="sign-up.html">
            </div>
        </form>
    
    <!----------------------- 포동애비 ---------------------------------->
    
    <h1 class="title">내 게시글</h1>
    
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
            
            <div class="div_board">
                <table class="table_board">
                    <tr>
                        <td>총 게시글 : 0건</td>
                        <td id="pg">PAGE 1/1</td>
                    </tr>
                </table>
            </div>
            
            <table class="table_list">
                <colgroup>
                    <col width=5%>
                    <col width=20%>
                    <col width=50%>
                    <col width=20%>
                    <col width=5%>
                </colgroup>
                <tr>
                    <th>번호</th>
                    <th>게시판</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>조회수</th>
                </tr>
                <tr>
                    <td colspan="6">작성된 게시글이 없습니다</td>
                </tr>
            </table>
            
            <div class="div_review">
                <table>
                    <tr>
                        <th>REVIEW ㅣ</th>
                        <td>내가 작성한 리뷰</td>
                    </tr>
                </table>
                <hr class="hr_line">
            </div>
            
            <div class="div_ctrl">
                <table class="table_ctrl">
                    <tr>
                        <td>0개의 리뷰를 작성하셨습니다.</td>
                        <td id="r_opt">
                            <select id="r_option">
                                <option>최신순</option>
                                <option>오래된순</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            
            <div class="div_r_list">
                <table>
                    <tr>
                        <td>아직 작성한 리뷰가 없습니다.</td>
                    </tr>
                </table>
            </div>
            
            <div class="div_r_button">
                <input type="button" value="리뷰작성" id="c_button3">
            </div>
            
        </div>
    </div>
    
    <footer>
    <hr class="hr_line">
        <table>
            <tr>
                <th>CUSTOMER CENTER</th>
                <th>BOARD</th>
                <th>HELP</th>
                <th>INSTAGRAM / BLOG</th>
            </tr>
            <tr>
                <td>1577-1577</td>
                <td>공지사항</td>
                <td>FAQ</td>
                <td>@leeeeeee_mh</td>
            </tr>
            <tr>
                <td>AM 11:30 - PM 12:08<br>(lunch AM 11:50 - PM 12:05)</td>
                <td>상품후기</td>
                <td> </td>
                <td>@parksil000</td>
            </tr>
            <tr>
                <td>주말,공휴일,평일 휴무</td>
                <td>고객센터</td>
                <td> </td>
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td>dmsdud4972@naver.com</td>
            </tr>
            <tr>
                <td>반품주소 : 경기도 남양주시 덕소도련님</td>
                <td> </td>
                <td> </td>
                <td>blog.naver.com/libra10042</td>
            </tr>
            <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
            </tr>
            <tr>
                <td>신한 110-319-569820</td>
                <td> </td>
                <td> </td>
                <td><img src="images/ft_appstore.gif"></td>
            </tr>
            <tr>
                <td>예금주 : (주)포동애비</td>
                <td> </td>
                <td> </td>
                <td><img src="images/ft_googleplay.gif"></td>
            </tr>
        </table>
    </footer>
</body>
</html>