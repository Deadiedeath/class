<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 프로세싱</title>
</head>
<body>
	<form action = "process.jsp" method="post">
	<p>	취미 : 독서<input type="checkbox" name="hobby" value ="reading" checked>
				운동<input type="checkbox" name="hobby" value ="exercise"> 
				영화<input type="checkbox" name="hobby" value ="movie">
				<p><textarea row="2" cols="40" name ="comment" placeholder="가입인사?"></textarea>
	<p><input type="submit" value="전송">
				</form>
</body>
</html>