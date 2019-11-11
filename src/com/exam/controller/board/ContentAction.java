package com.exam.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.BoardDao;
import com.exam.vo.BoardVO;

public class ContentAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ContentAction");
		String pageNum = request.getParameter("pageNum");
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDao boardDao = BoardDao.getInstance();
		boardDao.updateReadcount(num);
		BoardVO boardVO = boardDao.getBoard(num);
		request.setAttribute("board", boardVO);
		request.setAttribute("pageNum", pageNum);
		ActionForward forward = new ActionForward();
		forward.setPath("notice/content");
		forward.setRedirect(false);
		return forward;
	}
}
