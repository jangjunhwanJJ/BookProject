<%@page import="www.jjh.kr.Book"%>
<%@page import="java.util.List"%>
<%@page import="www.jjh.kr.BookController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% BookController controller = new BookController();
List<Book> BookList = controller.selectBooks();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>대표이미지</th>
			</tr>
		</thead>
		<tbody >
			<% for(int i = 0; i < BookList.size();i++){
				Book book = BookList.get(i);
			%>
			<tr>
				<td><%=book.getId() %></td>
				<td><%=book.getTitle() %></td>	
				<td><%=book.getWriter() %></td>
				<td>
					<img alt="" src="<%=book.getImage0() %>" width="50px" height="50px">	
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

</body>
</html>