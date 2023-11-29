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

import kr.co.green.packages.model.dto.PackageDTO;
import kr.co.green.packages.model.service.PackageServiceImpl;


@WebServlet("/packageControll.do")
@MultipartConfig(
		fileSizeThreshold = 1024*1024, //1mb
		maxFileSize = 1024*1024*5, //5mb 파일 1개에 대한 최대사이즈
		maxRequestSize = 1024*1024*5*5 //25mb 파일 여러개에 대한 최대사이즈
)
public class PackageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PackageController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int p_idx = Integer.parseInt(request.getParameter("p_idx"));
		
		PackageServiceImpl packageService = new PackageServiceImpl();
		
		if(p_idx > 0) {
			PackageDTO pack = new PackageDTO();
			pack.setP_idx(p_idx);
			packageService.packageSelect(pack);
			
			//3.orderDetail.jsp로 포워딩
			if(!Objects.isNull(pack.getP_idx())) {
				request.setAttribute("pack",pack);
				RequestDispatcher view = request.getRequestDispatcher("/views/package/orderDetail.jsp");
				view.forward(request, response);
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
