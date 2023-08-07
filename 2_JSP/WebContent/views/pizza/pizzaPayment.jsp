<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userName = (String)request.getAttribute("userName");
	String phone = (String)request.getAttribute("phone");
	String address = (String)request.getAttribute("address");
	String message = (String)request.getAttribute("message");
	String pizza = (String)request.getAttribute("pizza");
	String[] topping = (String[])request.getAttribute("topping");
	String[] side = (String[])request.getAttribute("side");
	String payment = (String)request.getAttribute("payment");
	int price = (int)request.getAttribute("price");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width: 1000px;height: 800px; margin: auto;">
    <h1>피자 결제 페이지</h1>

    <h2>주문내역</h2>

    <h4>[ 주문자 정보 ]</h4>
    <ul>
        <li>성함 : <%=userName %> </li>
        <li>전화번호 : <%=phone %> </li>
        <li>주소 : <%=address %></li>
        
        <% if(message.equals("")){ %>
        	<li>요청사항 : 작성안함</li><!-- case1 . 요청사항 작성 안한 경우 -->
        <%}else { %>
        	<li>요청사항 : <%=message %></li><!-- case2 . 요청사항 작성 한경우 -->
        <%} %>
    </ul>

    <br>

    <h4>[ 주문정보 ]</h4>
    <ul>
        <li>피자 : <%=pizza %></li>
        
        <% if(topping.equals("")){ %>
        	<li>토핑 : 선택안함</li><!-- case1 토핑 선택 안했을 -->
         <%}else { %>
       		<li>토핑 : <%=String.join(",", topping) %></li><!-- case2 토핑 선택 -->
		 <%} %>
		 
		 <% if(side.equals("")){ %>
        	<li>사이드 : 선택안함</li><!-- case1 -->
         <%}else { %>
       		 <li>사이드 : <%=String.join(",", side) %></li><!-- case2 -->
		 <%} %>
        
        <li>결제방식 : <%=payment %></li>
    </ul>

    <hr>

    <h3>위와 같이 주문하셨습니다.</h3>

    <h2>총 가격 : <%=price %> 원</h2>
    

</div>
</body>
</html>