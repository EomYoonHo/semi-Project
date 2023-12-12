package kr.co.green.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import kr.co.green.board.model.service.BoardServiceImpl;

@WebServlet("/boardEnroll.do")
@MultipartConfig(
		fileSizeThreshold = 1024*1024, //1mb
		maxFileSize = 1024*1024*5, //5mb 파일 1개에 대한 최대사이즈
		maxRequestSize = 1024*1024*5*5 //25mb 파일 여러개에 대한 최대사이즈
)
public class BoardEnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardEnrollController() {

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
		//1.내용,제목 받기
		String b_title = request.getParameter("b_title");
		String b_content = request.getParameter("b_content");
		
		System.out.println("b_title "+ b_title);
		System.out.println("b_content "+ b_content);
		
		
		//2.세션에 있는 name 꺼내기
		HttpSession session = request.getSession();
		int m_no = (int)session.getAttribute("m_no");
		System.out.println("m_no"+m_no);

		//파일 업로드
		Collection<Part> parts = request.getParts();
		String uploadDirectory = "C:\\prj\\세미프로젝트\\src\\main\\webapp\\resources\\uploads";
		
		//파일 업로드하려는 디렉토리 없으면 생성
		File b_file_path = new File(uploadDirectory);
		if(!b_file_path.exists()) {
			b_file_path.mkdirs();
		}
		
		//사용자가 업로드하면 parts에 담김
		String b_file_name = null;
		for(Part part : parts) {
			b_file_name = getFileName(part);
			if(b_file_name != null) {
				//실제 디스크에 저장하는 코드
				part.write(b_file_path + File.separator + b_file_name);
			}
		}
		
		
		//3.서비스호출
		BoardServiceImpl boardService = new BoardServiceImpl();
		
//		BoardDTO board = new BoardDTO();
//		board.setTitle(title);
//		content
//		writer
//		
//		board.setFilePath(filePath);
//		board.setFileName(fileName);
		
		int result = 0;
		
		//데이터 길이 검증
		if(b_title.length()==0 || b_content.length()==0) {
			result = 0;
		}else {
			result = boardService.boardEnroll(b_title, b_content, uploadDirectory, b_file_name, m_no);
		}
		
		//4.성공 유무에 따라 처리
		if(result>0) {
			response.sendRedirect("/boardList.do?cpage=1");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
			view.forward(request, response);
		}
	}
	

	//파일 이름 가지고 오는 메소드
	private String getFileName(Part part) {
		String contentDisposition = part.getHeader("content-disposition");
		//세미콜론 기준으로 토큰을 나눠 배열로 저장
		String[] tokens = contentDisposition.split(";");
		
		//토큰을 하나씩 꺼내면서 토큰의 이름이 filename으로 시작하는것을 찾을때 까지 반복
		for(String token : tokens) {
			if(token.trim().startsWith("b_file_name")) {
				//파일의 이름이 "filename="다음에 나오기 때문에
				//"filename="의 다음 문자부터 추출
				return token.substring(token.indexOf('=')+2,token.length()-1);
			}
		}
		return null;
	}
	

}
