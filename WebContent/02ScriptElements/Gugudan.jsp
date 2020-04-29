<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public void showGugudan(JspWriter out) {
	try {
		out.println("<table border='1' width='700'>");
		for(int i=2; i<=9; i++) {
			out.println("<tr>");
			for(int j=1; j<=9; j++) {
				out.println("<td>" + i + "x" + j + "=" + (i*j) + "</td>");
			}
			out.println("</tr>");
		}
		out.println("</table>");
	}
	catch(Exception e){}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gugudan.jsp</title>
</head>
<body>
	<h2>JSP로 구구단 출력하기</h2>
	
	<h3>구구단 출력1 - 메소드로 구현</h3>
	<% 
		showGugudan(out);
	%>
	
	<h3>구구단출력2 - 표현식으로 구현</h3>
	<table border='1' width='700'>
		<% 
		for(int dan=2; dan<=9; dan++) {
			
		%>
		<tr>
			<% 
			for(int su=1; su<=9; su++) {
			%>
			<td><%=dan%>x<%=su %>=<%=(dan*su) %></td>
			<% 
			}
			%>
		</tr>
		<% 
		}
		%>
	</table>
	<!-- 아래부터는 연습 -->
	<h3>1~100사이 3배수의 합</h3>
	<% int sum=0; %>
	<% for(int i=1; i<=100; i++) { %>
		<% if(i % 3==0) { %>
			<% sum += i; %>
		<%} %>
	<% } %>
	1~100사이 3배수의 합은<%=sum %>
	
	<h3>구구단 가로로 출력하기</h3>
	<table border="1" width="800">
		<%for(int su=1; su<=9; su++) { %>
		<tr>
			<%for(int dan=2; dan<=9; dan++) { %>
			<td>
				<%=dan %> X <%=su %> = <%=(dan*su) %>
			</td>
			<%} %>
		</tr>
		<%} %>
	</table>


</body>
</html>