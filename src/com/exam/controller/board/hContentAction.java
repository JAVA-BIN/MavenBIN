package com.exam.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.AttachDao;
import com.exam.dao.BoardDao;
import com.exam.vo.AttachVO;
import com.exam.vo.BoardVO;

public class hContentAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("hContentAction");
		String pageNum = request.getParameter("pageNum");
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDao boardDao = BoardDao.getInstance();
		boardDao.updateReadcount(num);
		BoardVO boardVO = boardDao.getBoard(num);
		AttachDao attachDao = AttachDao.getInstance();
		List<AttachVO> attachList = attachDao.getAttaches(num);
		request.setAttribute("board", boardVO);
		request.setAttribute("attachList", attachList);
		request.setAttribute("pageNum", pageNum);
		ActionForward forward = new ActionForward();
		forward.setPath("notice/hcontent");
		forward.setRedirect(false);
		return forward;
	}
}
