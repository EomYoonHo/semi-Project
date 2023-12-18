package kr.co.green.authentication.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/EmailCertification.do")
public class EmailCertificationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmailCertificationController() {
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
		//받아온 코드값
		String certificationDoor = request.getParameter("certificationDoor");
		//사용자가 입력하는 이메일로 받아온 코드값
		String certificationKey = request.getParameter("certificationKey");
		//사용자 이메일
		String email = request.getParameter("email");
		//이메일를 통해 사용자가 존재하는지 확인
		MemberServiceImpl memberService = new MemberServiceImpl();
		MemberDTO memberExist = new MemberDTO();
		memberExist.setM_email(email);
		memberService.selectMember(memberExist);
			//코드값 동일한지 확인								//사용자 확인
		if (certificationDoor.equals(certificationKey) && memberExist.getM_no() != 0) {
			//값넘기기
			request.setAttribute("email", email);
			RequestDispatcher view = request.getRequestDispatcher("/views/member/changePWD.jsp");
			view.forward(request, response);
		} else if (memberExist.getM_no() == 0) {//사용자 존재하지않을때
			System.out.println("존재하지 않는 회원입니다");
			response.sendRedirect("/views/common/error.jsp");
		} else if (!certificationDoor.equals(certificationKey)) {//코드값 다를때
			System.out.println("코드가 일치하지 않습니다");
			response.sendRedirect("/views/common/error.jsp");
		} else {
			response.sendRedirect("/views/common/error.jsp");
		}
	}
}