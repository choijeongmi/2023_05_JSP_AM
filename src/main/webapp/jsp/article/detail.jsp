<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Map<String, Object> articleMap = (Map<String, Object>) request.getAttribute("articleMap");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세보기</title>
</head>
<body>
	<%@ include file="../common/topBar.jsp" %>

	 <h1><%= (int) articleMap.get("id") %>번 게시물</h1>	
	 <div>글번호 : <%= (int) articleMap.get("id") %></div>
	 <div>작성일 : <%= (LocalDateTime) articleMap.get("regDate") %></div>
	 <div>작성자 : <%= (String) articleMap.get("writerName") %></div>
	 <div>제목 : <%= (String) articleMap.get("title") %> </div>
	 <div>내용 : <%= (String) articleMap.get("body") %></div>
	 <a href="list">목록</a>
	 <a href="../home/main">메인</a>
	 
	<% 
	if ((int)articleMap.get("memberId") == loginedMemberId ) {
	%> 		
	 <a href="doDelete?id=<%=(int) articleMap.get("id")%>" onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false;">삭제</a>
	 <a href="modify?id=<%=(int) articleMap.get("id")%>">수정</a>
			
	<%
	}
	%> 


</body>
</html>