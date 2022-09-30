<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	//버퍼 내용 삭제
	out.print("출력되지 않은 텍스트");
out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>");
	out.clearBuffer();
	out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
	out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>");
	//버퍼 크기 정보 확인
	
	//값 들을 출력
%>

</body>
</html>