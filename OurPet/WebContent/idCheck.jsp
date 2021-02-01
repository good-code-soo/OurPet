<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="UserData.MemberMgr" />
<%
	request.setCharacterEncoding("EUC-kr");
String id = request.getParameter("id");
boolean result = mMgr.checkId(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아워펫-함께 돌보는 반려동물(ID중복체크)</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div align="center">
		<br /> <b><%=id%></b>
		<%
			if (result) {
			out.println("는 이미 존재하는 id입니다.<p/>");
		} else {
			out.println("는 사용 가능 합니다.<p/>");
		}
		%>
		<a href="#" onClick="self.close()"><input type="button" value="닫기"></a>
	</div>
</body>
</html>