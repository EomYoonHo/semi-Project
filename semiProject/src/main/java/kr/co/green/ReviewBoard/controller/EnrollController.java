package kr.co.green.ReviewBoard.controller;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import kr.co.green.ReviewBoard.model.dto.ReviewBoardDTO;
import kr.co.green.ReviewBoard.model.service.ReviewBoardServiceImpl;


@WebServlet("/reviewEnroll.do")
//@MultipartConfig(
//		fileSizeThreshold = 1024 * 1024,
//		maxFileSize = 1024 * 1024 * 5,
//		maxRequestSize = 1024 * 1024 * 5 *5		
//		)

public class EnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EnrollController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		
		
		HttpSession session = request.getSession();
//		int mno = (int)session.getAttribute("m_no");
		int mno = 8;
		String nickName = (String)session.getAttribute("nickName");
		
//		// 파일 업로드할때
//		Collection<Part> parts = request.getParts();
// 		String uploadDirectory = "C:\\Users\\pje97\\eclipse-workspace\\FirstProject\\src\\main\\webapp\\resource\\upload";
// 		
// 		File filePath = new File(uploadDirectory);
// 		
// 		if(!filePath.exists()) {
// 			filePath.mkdirs();
// 		}
// 		
// 		String fileName = null;
// 		
// 		for(Part part : parts) {
// 			fileName = getFileName(part);
// 		
// 			if(fileName != null) {
// 				part.write(filePath + File.separator + fileName);
// 			}
// 		
// 		}
 		
 		ReviewBoardServiceImpl boardService = new ReviewBoardServiceImpl();
 		
 		ReviewBoardDTO board = new ReviewB111111111111111111	oardDTO();
// 		board.setTitle(title);
// 		board.setContent(content);
// 		board.setStar(star);
// 		board.setNickName(nickName);
// 		board.setFileName(fileName);
// 		board.setFilePath(uploadDirectory);
	
 		int result = boardService.boardEnroll(title, content, star, mno);
	
 		if(result > 0) {
 			response.sendRedirect("/reviewBoardList.do?cpage=1");
 		}else {
 			
 		}
 		
	}
// 		private String getFileName(Part part) {
// 			String contentDisposition = part.getHeader("content-disposition");
//
// 			String[] tokens = contentDisposition.split(";");
//
// 			  // 토큰을 하나씩 꺼내면서 토큰의 이름이 filename으로
// 		      // 시작하는걸 찾을때 까지 반복
// 		      for(String token : tokens) {
// 		         // 토큰의 이름이 filename으로 시작하는지 확인
// 		         if(token.trim().startsWith("filename")) {
// 		            
// 		            // 파일의 이름이 "filename=" 다음에 나오기 때문에
// 		            // "filename=" 의 다음 문자부터 끝까지 추출
// 		            return token.substring(token.indexOf('=')+2, token.length()-1);
// 		         }
// 		      }
// 		      return null;
//
// 		}
 		
 		
 		


}
