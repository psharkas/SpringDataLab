<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>
	Grades
</h1>

<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Type</th>
				<th>Score</th>
				<th>Total</th>
			</tr>
		</thead>
			<tbody>
			<c:forEach var="grade" items="${grades}">
				<tr>
					<td>${grade.name}</td>
					<td>${grade.type}</td>
					<td>${grade.score}</td>
					<td>${grade.total}</td>
					<td><a href="/delete?id=${grade.id}" class="button">Delete</a></td>
					
										
				</tr>
			</c:forEach>
		</tbody>
	
		
</table>
		
<a href = "/gradeForm">Add a grade</a>

</body>
</html>