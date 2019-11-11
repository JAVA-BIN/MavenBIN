package com.exam.controller.board;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.BoardDao;
import com.exam.vo.BoardVO;
import com.sun.xml.internal.ws.api.pipe.NextAction;

import sun.security.jca.GetInstance;

public class WriteAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("WriteAction");
		BoardVO boardVO = new BoardVO();
		boardVO.setUsername(request.getParameter("username"));
		boardVO.setPasswd(request.getParameter("passwd"));
		boardVO.setSubject(request.getParameter("subject"));
		boardVO.setContent(request.getParameter("content"));
		// 글 등록날짜, IP주소
		boardVO.setRegDate(new Timestamp(System.currentTimeMillis()));
		boardVO.setIp(request.getRemoteAddr());
		BoardDao boardDao = BoardDao.getInstance();
		int num = boardDao.nextBoardNum();
		boardVO.setNum(num);
		boardVO.setReadcount(0);
		boardVO.setReRef(num);
		boardVO.setReLev(0);
		boardVO.setReSeq(0);
		boardDao.insertBoard(boardVO);
		ActionForward forward = new ActionForward();
		forward.setPath("notice.do");
		forward.setRedirect(true);
		return forward;
	}
}
