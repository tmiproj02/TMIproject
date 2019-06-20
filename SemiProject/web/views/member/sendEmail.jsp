<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.Properties" %>
<%@ page import = "javax.mail.Message" %>
<%@ page import = "javax.mail.MessagingException" %>
<%@ page import = "javax.mail.PasswordAuthentication" %>
<%@ page import = "javax.mail.Session" %>
<%@ page import = "javax.mail.Transport" %>
<%@ page import = "javax.mail.internet.InternetAddress" %>
<%@ page import = "javax.mail.internet.MimeMessage" %>
<%@ page import = "member.common.PasswordWrapper" %>

<% 
	final String sender = "tmicor@naver.com"; // 보내는 사람 ID (Ex: @naver.com 까지..)
	final String password = "TmiTmi123!"; // 보내는 사람 Password
	
	String receiver = request.getParameter("email"); // 받는 사용자 (Ex: @naver.com 까지..)
	
	
	System.out.println("---------recv Data Check--------");
	System.out.println("recvID : " + receiver);
	
	
	// Get the session object
	Properties props = new Properties();
	props.put("mail.smtp.host", "smtp.naver.com");
	props.put("mail.smtp.auth", "true");
	
	Session ses = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(sender, password);
		}
	});
	String host = "localhost:8088/semi/views/member/"; // 사이트
	String code = null; // 암호화된 인증코드 담을 변수
	String contents = "인증을 위한 인증 메일입니다. 버튼을 누르세요." + "<a href='" + host + "mailVerifyCheck.jsp?code="
				      + PasswordWrapper.getSHA512(receiver) + "&receiver=" + receiver + "'>" + "인증하기" + "</a>";
	// Compose the message
	try {
		MimeMessage message = new MimeMessage(ses);
		message.setFrom(new InternetAddress(sender));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
	
		// sender Email Address
		message.setFrom("TMICorporation <" + sender + ">");
	
		// Subject
		message.setSubject("[인증] 회원가입을 위한 인증 메일입니다.");
	
		// Text
		message.setContent(contents,"text/html; charset=UTF-8");
		// send the message
		Transport.send(message);
		System.out.println("전송 완료!!!!");
	
	} catch (MessagingException e) {
		System.out.println("전송 실패!! ㅠㅠ");
		e.printStackTrace();
	}
	

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증메일 전송 완료</title>
<style>

.logo{
   width: 500px;
   text-align:center;
   margin:0 auto;
}

</style>
</head>
<body>
	
	<div class="Wrapper" style="margin: 0 auto; border-bottom: 4px solid #BDD4F2!important;">
   <div class="logo">
      <img src="/semi/resources/images/KakaoTalk_20190606_164601739.png" style="width:125px; cursor:pointer; margin-bottom: -9px;" onclick="toMain();">   
   </div>
  </div>
	<h2>인증메일이 전송되었습니다!</h2>
	<p>작성하신 이메일에서 인증버튼을 누르시면 회원가입이 완료됩니다.</p>


	<%@ include file="../common/footer.jsp" %>	

</body>
</html>