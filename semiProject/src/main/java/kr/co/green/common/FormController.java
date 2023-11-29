package kr.co.green.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

<<<<<<< HEAD
@WebServlet("/form/*")
public class FormController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FormController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");

		String action = request.getPathInfo();
		String nextPage = "";

		if (action.equals("/loginform.do")) {
			nextPage = "/views/member/login.jsp";
		} else if (action.equals("/registerform.do")) {
			nextPage = "/views/member/register.jsp";
		} else if (action.equals("/mapform.do")) {
			nextPage = "/views/member/map.jsp";
		}

		if (nextPage != null && !nextPage.isEmpty()) {
			RequestDispatcher view = request.getRequestDispatcher(nextPage);
			view.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
=======
import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;

@WebServlet("/form/*")
public class FormController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public FormController() {
      super();

   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      response.setContentType("text/html; charset=utf-8");
      
      String action = request.getPathInfo();
      String nextPage = "";
      
      HttpSession session =request.getSession();
      
      if (action.equals("/loginform.do")) {
         nextPage = "/views/member/login.jsp";
      } else if (action.equals("/registerform.do")) {
         nextPage = "/views/member/register.jsp";
      } else if (action.equals("/mapform.do")) {
         nextPage = "/views/common/map.jsp";
      }else if(action.equals("/orderlistform.do")) {
         nextPage =  "/views/packages/Orderlist.jsp";
      }else if(action.equals("/orderdetailform.do")){
         nextPage= "/views/packages/Orderdetail.jsp";
      }else if(action.equals("/profileform.do")) {
         String email=(String)session.getAttribute("email");
         MemberServiceImpl memberService = new MemberServiceImpl();
         MemberDTO memberDTO = new MemberDTO();
         memberDTO.setM_email(email);
         memberService.selectMember(memberDTO);
         request.setAttribute("memberDTO", memberDTO);
         nextPage = "/views/member/profile.jsp";
      }
      
      
      
      if (nextPage != null && !nextPage.isEmpty()) {
         RequestDispatcher view = request.getRequestDispatcher(nextPage);
         view.forward(request, response);
      }

   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      doGet(request, response);
   }

}
>>>>>>> branch 'master' of https://github.com/EomYoonHo/semi-Project.git
