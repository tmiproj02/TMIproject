<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	nav, section {
        float: left;
    }

</style>
</head>
<body>
	<%@ include file="/views/common/myHeader.jsp" %>

	<nav style="background-color:gold">
    	<h1>메세지</h1>
    </nav>
	
	<section>
            <article>
                <p>메세지 구현 섹션</p>
            </article>
            
            <br><br><br><br>
            <a href="/semi/index.jsp">홈으로 돌아가기</a>
    </section>

	
	

	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>