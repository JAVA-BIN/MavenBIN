package com.exam.controller.board;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.BoardDao;
import com.exam.vo.BoardVO;

public class reWriteAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("reWriteAction");
		BoardVO boardVO = new BoardVO();
		boardVO.setUsername(request.getParameter("username"));
		boardVO.setPasswd(request.getParameter("passwd"));
		boardVO.setSubject(request.getParameter("subject"));
		boardVO.setContent(request.getParameter("content"));
		boardVO.setReRef(Integer.parseInt(request.getParameter("reRef")));
		boardVO.setReLev(Integer.parseInt(request.getParameter("reLev")));
		boardVO.setReSeq(Integer.parseInt(request.getParameter("reSeq")));
		// 등록날짜, IP 저장
		boardVO.setRegDate(new Timestamp(System.currentTimeMillis()));
		boardVO.setIp(request.getRemoteAddr());
		BoardDao boardDao = BoardDao.getInstance();
		int num = boardDao.nextBoardNum();
		boardVO.setNum(num);
		boardVO.setReadcount(0);
		boardDao.reInsertBoard(boardVO);
		ActionForward forward = new ActionForward();
		forward.setPath("notice.do");
		forward.setRedirect(true);
		return forward;
	}
}
