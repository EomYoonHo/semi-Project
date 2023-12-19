package kr.co.green.authentication.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SendEmail.do")
public class SendEmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SendEmailController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");

		// 난수 생성
		int leftLimit = 48; // numeral '0'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 10;
		Random random = new Random();
		String generatedString = random
				.ints(leftLimit, rightLimit + 1)
				.filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
				.limit(targetStringLength)
				.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append).toString();
		
		//사용자 이메일 주소 받아오기
		String email = request.getParameter("email");

		String recipient = email;// 받는사람
		String code = generatedString;// 난수

		// 1. 발신자의 메일 계정과 비밀번호 설정
		final String user = "qkrwnsdjs97@gmail.com";//본인의 지메일 계정
		final String password = "rocp rnuk xkoo zslm";//구글 메일에서 설정으로 받아온 토큰 (이거 토큰은 민수한테 물어보기)

		// 2. Property에 SMTP 서버 정보 설정
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "465");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.starttls.required", "true");
		prop.put("mail.smtp.ssl.protocols", "TLSv1.3");
		prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		// 3. SMTP 서버정보와 사용자 정보를 기반으로 Session 클래스의 인스턴스 생성
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		// 4. Message 클래스의 객체를 사용하여 수신자와 내용, 제목의 메시지를 작성한다.
		// 5. Transport 클래스를 사용하여 작성한 메세지를 전달한다.
		MimeMessage message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(user));
			// 수신자 메일 주소
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			// Subject
			message.setSubject("이메일 인증코드");
			// Text
			message.setText("본인확인 코드 " + code + " 를 입력하세요");
			Transport.send(message); // send message
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		//코드 전 페이지로 보내주기
		PrintWriter out = response.getWriter();
		out.print(code);
	}
}