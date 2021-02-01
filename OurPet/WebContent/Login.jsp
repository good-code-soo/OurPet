<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아워펫-함께 돌보는 반려동물</title>
</head>
<SCRIPT language="javaScript">
function login_check(){
	frm1 = documemt.login;
		
	alert("왔다");
	if(frm1.email.value==""){
	/* 	alert("이메일 주소를 입력해주세요"); */
		frm1.email.focus();
		return;
	}else if(frm1.pw.value==""){
		alert("비밀번호를 입력해주세요");
		frm1.pw.focus();
		return;
	}
	
/* 	form.action = "";
	form.submit(); */
}
</script>
<body>
<form name = "login">
<table>
<tr>
<td>이메일</td>
<td><input type ="text" name = "email"/></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type = "password" name ="pw"/></td>
</tr>
<tr>
<td><input type="button" value="로그인" onclick="login_check()"></td>
<td><input type ="button" value ="뒤로가기" onclick="location.href='Main.jsp'"></td>
</tr>
</table>
</form>
</body>
</html>