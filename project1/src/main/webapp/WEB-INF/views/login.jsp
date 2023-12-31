<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/menu.css">
<script type="text/javascript">
//스크립트 영역
let text = "<p>올바른 아이디를 입력하세요.</p>"; //전역변수
//호이스팅이 뭐예요? let vs var? json? const/

function checkID(){
	/* alert("!"); */
	let msg = document.getElementById("msg");
	msg.innerHTML += "<p>" +document.getElementById("id").value + "아이디를 변경했습니다.</p>"
}


	function check() {
		// alert("!");   
		let msg = document.getElementById("msg");
		let id = document.getElementById("id");
		/*  alert(id.value);
		 alert(id.value.length); */
		if (id.value.length < 4) {
			alert("아이디는 4글자 이상이어야 합니다.");
			msg.innerHTML = text;
			id.focus();
			return false; //이동하겠습니다
		}
		
		let pw = document.getElementById("pw");
		if (pw.value.length < 4) {
			alert("암호는 4글자 이상이어야 합니다.");
			pw.focus();
			return false; //이동하겠습니다
	}
	
}
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="main">
		<!-- <h1>login</h1> -->
		<div class="login-box">
			<div class="login-image">
				<img alt="logo" src="./img/login.png" height="300px">
			</div>
			<div class="login-form">
				<form action="./login" method="post" onsubmit="return check()">
					<input type="text" name="id" id="id" placeholder="ID"
						required="required" maxlength="10" onchange="checkID()"> <input type="password"
						name="pw" id="pw" placeholder="PW" required="required"
						maxlength="15">
					<button type="submit" class="login">LOGIN</button>
					<span id="msg"></span>
				</form>
				
				아이디 찾기 | 비밀번호 찾기 | <a href="./join">회원가입</a>
				
			</div>
		</div>
	</div>

</body>
</html>