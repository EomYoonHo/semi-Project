package kr.co.green.map.controller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.map.model.dto.MapDTO;
import kr.co.green.map.model.service.MapServiceImpl;


@WebServlet("/mapControll.do")
@MultipartConfig(
		fileSizeThreshold = 1024*1024, //1mb
		maxFileSize = 1024*1024*5, //5mb 파일 1개에 대한 최대사이즈
		maxRequestSize = 1024*1024*5*5 //25mb 파일 여러개에 대한 최대사이즈
)
public class MapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MapController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.idx받기
		int c_idx = Integer.parseInt(request.getParameter("c_idx"));
		int l_idx = Integer.parseInt(request.getParameter("l_idx"));
		// c_idx = 1
		// (1) + (0) = 1
		// (1) + (3) = 4
		
		// c_idx = 3
		// (9) + (1) = 10
		l_idx = (4 * c_idx - 3) + (l_idx-1);
		
		MapServiceImpl mapService = new MapServiceImpl();
		
		
		
		if(c_idx > 0) {
			//2.l_idx로 first에 정보뿌림
			MapDTO map = new MapDTO();
			map.setL_idx(c_idx);
			map.setL_idx(l_idx);
			mapService.localSelect(map);
			
			//3.first.jsp로 포워딩
			if(!Objects.isNull(map.getL_idx())) {
				request.setAttribute("map",map);
				RequestDispatcher view = request.getRequestDispatcher("/views/common/first.jsp");
				view.forward(request, response);
			}else {
				RequestDispatcher view = request.getRequestDispatcher("/views/common/error.jsp");
				view.forward(request, response);
			}
			
		}
		
		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
