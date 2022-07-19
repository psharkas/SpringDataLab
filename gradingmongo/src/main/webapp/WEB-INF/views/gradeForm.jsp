<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a grade</title>
</head>
<body>

<h1>
	Insert a grade
</h1>


		
<form action="/gradeconfirmation" method="post">
	Name: <input name="name" type="text"><br>
	Type: 
		<select name = "type">
			<option value="Assignment">Assignment</option>
  			<option value="Quiz">Quiz</option>
  			<option value="Exam">Exam</option>
		</select><br>
	Score <input name="score" type="number" min = "0" max = "100"/><br>
	
	Total: <input name="total" type="number" min = "0" max = "100"/><br>
	<input type="submit"/>
</form>		


</body>
</html>