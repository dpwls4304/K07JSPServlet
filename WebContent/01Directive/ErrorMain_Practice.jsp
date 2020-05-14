<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 스크립트릿 -->
<%
String nowAge = null;
String strAge = request.getParameter("age");

if(strAge != null) {
	nowAge = strAge + "0";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorMain_Practice.jsp</title>
<style>
	legend {
		color: red;
		font-size: 1.5em;
	}
</style>
<script>
	function goBack() {
		alert("초기화눌림")
		location.href = "./ErrorMain_Practice.jsp"/* 상대경로 */
	}
</script>
</head>
<body>
	<h2>나이 앞자리를 입력하세요!</h2>
	
	<form action="">
		<input type="text" name="age" maxlength="1" />
		<input type="submit" value="확인" />
		<br />
		<%if(nowAge == null) { %>
			※나이를 입력하지 않거나 숫자 이외에 문자를 입력시 에러가 발생됩니다.
		<% } %>
	
	<%if(nowAge != null) { %>
	<fieldset>
		<legend>
			당신의 <%=nowAge %>대는
		</legend>
			<%switch(strAge) { 
			case "1":
				out.println("보물을 가득담은 주머니! 무엇이 나올진 몰라도 모두 귀한것만 넣었습니다.");
				break;
			case "2":
				out.println("길을 찾아나서는 목동! 어두컴컴한 밤일지라도 주위를 자세히 둘러보면 환한 별들이 당신과 함께합니다.");
				break;
			 } %>
	</fieldset>
	<% } %>
	<input type="button" value="돌아가기" onclick="goBack();" />
	</form>
</body>
</html>