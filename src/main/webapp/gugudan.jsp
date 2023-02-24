<%--스크립트릿을 사용하여 수평 구구단 결과를 레이블 있는 테이블로 출력하는 코드를 작성하세요. --%>

<%@ page  contentType="text/html; charset=UTF-8" %>

<%
	String gugu = "";

	for(int num = 0; num < 10; num++){
		gugu += "<tr>\n\t";
		
		for(int dan = 2; dan < 10; dan++) {
			if(num == 0) {
				gugu += "\t<th>" + dan + " 단 </td>";
			}
			else {
				gugu += "\t<td> " + dan + " * " + num + " = " + (dan * num) + " </td>";
			}
		}
		
		gugu += "\n</tr>\n";
	}

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>수평 구구단 예제</title>
	<style>
		table, td {
			border: 2px solid gray;
			border-collapse: collapse;
			
		}
		
		td {
			padding: 5px;
			text-align: center;
		}
	</style>
</head>

<body>

	<table>
	
	<%= gugu %>
	
<%--
<% for(int num = 0; num <= 9; num++) { %>
	<tr>
	
	<% for(int dan = 2; dan <= 9; dan++) {	
			if(num == 0) { %>
			<td>
		<%= dan + "단"%>
			</td>
		<% } 
			
			else { %>
		<td>
		<%= dan + " * " + num + " = " + dan*num %>
		</td>
	<% 	}
		} %>
	<tr>
<% } %>
 --%>
	</table>
	
</body>
</html>