    <%@ page import = "membership.MemberDTO" %>
    <%@ page import = "membership.MemberDAO" %>
    <%@ page import = "board.BoardDAO" %>
<%@ page import = "board.boardDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//일련번호 받기 list.jsp에서 넘겨준 num받기
	String num = request.getParameter("num");
	//DAO생성
	BoardDAO dao = new BoardDAO(application);
	//조회수 증가 기능 DAO에 updateVisitcount(num)작성
	dao.updateVisitCount(num);
	//num값(board게시판 primary key)을 이용한 게시물 가져오기 기능 작성 : selectview(num)
	boardDTO dt = dao.selectView(num);
	//dao연결 해제
	dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판</title>
<script>
function deletePost() {
    var confirmed = confirm("정말로 삭제하겠습니까?"); 
    if (confirmed) {
        var form = document.writeFrm;       // 이름(name)이 "writeFrm"인 폼 선택
        form.method = "post";               // 전송 방식 
        form.action = "DeleteProcess.jsp?num=<%=dt.getNum()%>";  // 전송 경로
        form.submit();                      // 폼값 전송
    }
}
</script>
</head>
<body>
<jsp:include page="Link.jsp" />
<h2>회원제 게시판 - 상세 보기(View)</h2>
<form name="writeFrm">
    <input type="hidden" name="num" value="" />  <!-- 공통 링크 -->

    <table border="1" width="90%">
        <tr>
            <td>번호</td>
            <td><%=dt.getNum() %></td>
            <td>작성자</td>
            <td><%=dt.getName() %></td>
        </tr>
        <tr>
            <td>작성일</td>
            <td><%=dt.getPostdate() %></td>
            <td>조회수</td>
            <td><%=dt.getVisitcount() %></td>
        </tr>
        <tr>
            <td>제목</td>
            <td colspan="3"><%=dt.getTitle() %></td>
        </tr>
        <tr>
            <td>내용</td>
            <td colspan="3" height="100"><%=dt.getContent() %>
                </td> 
        </tr>
        <tr>
            <td colspan="4" align="center">
                       <%
            if (session.getAttribute("UserId")!=null && 
            session.getAttribute("UserId").toString().equals(dt.getId())){                  
               
            %>
                <button type="button"
                        onclick="location.href='Edit.jsp?num=<%=dt.getNum()%>';">
                    수정하기</button>
                <button type="button" onclick="deletePost();">삭제하기</button> 
            <%
            }
            %>
                <button type="button" onclick="location.href='List.jsp';">
                    목록 보기
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
