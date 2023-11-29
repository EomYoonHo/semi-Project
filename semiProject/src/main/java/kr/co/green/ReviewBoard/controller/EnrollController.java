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
<<<<<<< HEAD
//		int mno = (int)session.getAttribute("m_no");
		int mno = 8;
		String nickName = (String)session.getAttribute("nickName");
		
//		// ÆÄÀÏ ¾÷·ÎµåÇÒ¶§
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
// 			  // ÅäÅ«À» ÇÏ³ª¾¿ ²¨³»¸é¼­ ÅäÅ«ÀÇ ÀÌ¸§ÀÌ filenameÀ¸·Î
// 		      // ½ÃÀÛÇÏ´Â°É Ã£À»¶§ ±îÁö ¹Ýº¹
// 		      for(String token : tokens) {
// 		         // ÅäÅ«ÀÇ ÀÌ¸§ÀÌ filenameÀ¸·Î ½ÃÀÛÇÏ´ÂÁö È®ÀÎ
// 		         if(token.trim().startsWith("filename")) {
// 		            
// 		            // ÆÄÀÏÀÇ ÀÌ¸§ÀÌ "filename=" ´ÙÀ½¿¡ ³ª¿À±â ¶§¹®¿¡
// 		            // "filename=" ÀÇ ´ÙÀ½ ¹®ÀÚºÎÅÍ ³¡±îÁö ÃßÃâ
=======
		//int mno = (int)session.getAttribute("m_no");
		int mno= 5;
		String nickName = (String)session.getAttribute("nickName");
		
//		// ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Îµï¿½ï¿½Ò¶ï¿½
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
 		
 		ReviewBoardDTO board = new ReviewBoardDTO();
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
// 			  // ï¿½ï¿½Å«ï¿½ï¿½ ï¿½Ï³ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½é¼­ ï¿½ï¿½Å«ï¿½ï¿½ ï¿½Ì¸ï¿½ï¿½ï¿½ filenameï¿½ï¿½ï¿½ï¿½
// 		      // ï¿½ï¿½ï¿½ï¿½ï¿½Ï´Â°ï¿½ Ã£ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Ýºï¿½
// 		      for(String token : tokens) {
// 		         // ï¿½ï¿½Å«ï¿½ï¿½ ï¿½Ì¸ï¿½ï¿½ï¿½ filenameï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½ï¿½ï¿½ È®ï¿½ï¿½
// 		         if(token.trim().startsWith("filename")) {
// 		            
// 		            // ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ì¸ï¿½ï¿½ï¿½ "filename=" ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
// 		            // "filename=" ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Úºï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
>>>>>>> branch 'master' of https://github.com/EomYoonHo/semi-Project.git
// 		            return token.substring(token.indexOf('=')+2, token.length()-1);
// 		         }
// 		      }
// 		      return null;
//
// 		}
 		
 		
 		


}
