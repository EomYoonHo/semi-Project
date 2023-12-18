package kr.co.green.point.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.green.point.model.dto.PointDTO;
import kr.co.green.point.model.service.PointServiceImpl;

@WebServlet("/pointMinus.do")
public class PointMinusController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PointMinusController() {
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
		
		PointServiceImpl pointService = new PointServiceImpl();
		
		int m_no =Integer.valueOf(request.getParameter("m_no"));
		
		int point = Integer.valueOf(request.getParameter("point"));
		//사용한 포인트
		int p_no =Integer.valueOf(request.getParameter("p_no"));
		//유저 포인트 지갑번호
		
		
		int pointMinus =pointService.pointMinus(point,p_no);
									//포인트차감 생성
		if(pointMinus==0) {
			System.out.println("포인트차감 생성 실패");
		}else {
			System.out.println("포인트차감 생성 성공");
		}
		
		PointDTO userPoint = pointService.selectPoint(m_no);
		int nowPoint=userPoint.getP_balance();
		//유저 현재 보유분
		PointDTO modification = pointService.selectPM(p_no);
										//가장 최신 포인트 변경 갖고 오기
		int miuns= modification.getPm_amount();	
		//사용값
		
		int change = nowPoint - miuns;
		
		int pointchange = pointService.pointUpdate(change, p_no); 
		if (pointchange == 0) {
			System.out.println("포인트 차감분 적용안됨");
		} else {
			System.out.println("포인트 차감분 적용");
		}
		
	}

}
