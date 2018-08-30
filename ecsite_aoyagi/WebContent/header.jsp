<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="./css/style.css">  -->
<title>ヘッダー</title>
<style type="text/css">

</style>
</head>
<body>
<header>
<div id="header">
	<div class="header-title">
		<a href='<s:url action="HomeAction"/>'>Ecsite_Aoyagi</a>
	</div>
	<div class="contents-list">
		<ul class="nav">
				<s:if test="#session.logined==1">
				<li><a href='<s:url action="LogoutAction"/>'>ログアウト</a></li>
				</s:if>
				<s:else>
				<li><a href='<s:url action="GoLoginAction"/>'>ログイン</a></li>
				</s:else>
				<li><a href='<s:url action="ProductListAction"/>'>商品一覧</a></li>
				<s:if test="#session.logined==1">
				<li><a href='<s:url action="MyPageAction"/>'>マイページ</a></li>
				</s:if>
				<s:else>
				<li><a href='<s:url action="GoLoginAction"/>'>マイページ</a></li>
				</s:else>
				<li><a href='<s:url action="CartAction"/>'>カート</a></li>
		</ul>
	</div>
</div>
</header>
</body>
</html>