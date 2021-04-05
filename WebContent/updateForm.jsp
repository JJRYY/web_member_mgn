<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 회원 수정</title>
<style>
	table{
		margin: auto;
		width: 400px;
		border: 1px solid gray;
		text-align: center;	
	}
	.td_title{
		font-weight: bold;
		font-size: x-large;
	}
</style>
</head>
<body>
<form name="updateform" action="updateProcess" method="get">
	<table border="1">
		<tr>
			<td colspan="2" class="td_title">
				회원 수정 페이지
			</td>
		</tr>
		<tr>
			<td><label for="id">아이디 : </label>
			<td><input type="text" name="id" id="id" value="${update_member.id }" readonly /></td>
		</tr>
		<tr>
			<td><label for="name">이름 : </label>
			<td><input type="text" name="name" id="name" value="${update_member.name }" /></td>
		</tr>
		<tr>
			<td><label for="age">나이 : </label>
			<td><input type="text" name="age" id="age" value="${update_member.age }" /></td>
		</tr>
		<tr>
			<td><label for="gender">성별 : </label></td>
			<td>
				<c:if test="${update_member.gender eq '남자' }">
					<input type="radio" name="gender" value="남자" id="gender" checked />남자
					<input type="radio" name="gender" value="여자" id="gender" />여자
				</c:if>
				<c:if test="${update_member.gender eq '여자' }">
					<input type="radio" name="gender" value="남자" id="gender" />남자
					<input type="radio" name="gender" value="여자" id="gender" checked />여자
				</c:if>
			</td>
		</tr>
		<tr>
			<td><label for="email">이메일 주소 : </label>
			<td><input type="text" name="email" id="email" value="${update_member.email }" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="javascript:updateform.submit()">회원수정</a>&nbsp;&nbsp;
				<a href="memberList">취소</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>