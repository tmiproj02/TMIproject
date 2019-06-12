<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TMI 구매 관리</title>
<style>
	nav, section {
        float: left;
    }

</style>
</head>
<body>
	<%@ include file="/views/common/myHeader.jsp" %>

	<%@ include file="/views/common/buyNav.jsp" %>
	
	<section>
        <h3>구매 관리</h3>
        <a>주문 목록</a> | <a>진행중</a>	| <a>완료</a>	| <a>취소</a>
            <article>
                <p>article</p>
            </article>
            <br><br><br><br>
            <a href="/semi/index.jsp">홈으로 돌아가기</a>
    </section>

	
	


	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>