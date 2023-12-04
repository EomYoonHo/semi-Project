package kr.co.green.packages.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;
import kr.co.green.packages.model.dto.PackageDTO;
import kr.co.green.packages.model.service.PackageServiceImpl;

@WebServlet("/packageControll.do")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, // 1mb
		maxFileSize = 1024 * 1024 * 5, // 5mb 파일 1개에 대한 최대사이즈
		maxRequestSize = 1024 * 1024 * 5 * 5 // 25mb 파일 여러개에 대한 최대사이즈
)
public class PackageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PackageController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//패키지list에서  패키지 p_idx 받아오기
		int p_idx = Integer.parseInt(request.getParameter("p_idx"));
		
		PackageServiceImpl packageService = new PackageServiceImpl();
		MemberServiceImpl memberService = new MemberServiceImpl();
		MemberDTO member = new MemberDTO();
		HttpSession session = request.getSession();
		
		//세션에서 M이메일 받아오기
		String m_email = (String) session.getAttribute("m_email");
		
		//멤버 정보 받기
		//패키지 정보 받기
		member.setM_email(m_email);
		memberService.selectMember(member);
		
		System.out.println(member.getM_email());
		System.out.println(member.getM_name());
		System.out.println(member.getM_phone());
		
		request.setAttribute("member", member);
		
		
		if (p_idx > 0) {
			PackageDTO pack = new PackageDTO();
			pack.setP_idx(p_idx);
			packageService.packageSelect(pack);
			System.out.println(pack.getP_name());
			System.out.println(pack.getP_price());

			// 3.orderDetail.jsp로 포워딩
			if (!Objects.isNull(pack.getP_idx())) {
				request.setAttribute("pack", pack);
				RequestDispatcher view = request.getRequestDispatcher("/views/package/orderDetail.jsp");
				view.forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
