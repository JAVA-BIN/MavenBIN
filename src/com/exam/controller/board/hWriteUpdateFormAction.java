package com.exam.controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.AttachDao;
import com.exam.dao.BoardDao;
import com.exam.vo.AttachVO;
import com.exam.vo.BoardVO;

public class hWriteUpdateFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("hWriteUpdateFormAction");
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		if (id == null) {
			forward.setPath("notice.do");
			forward.setRedirect(true);
			return forward;
		}
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		BoardDao boardDao = BoardDao.getInstance();
		BoardVO boardVO = boardDao.getBoard(num);
		AttachDao attachDao = AttachDao.getInstance();
		List<AttachVO> attachList = attachDao.getAttaches(num);
		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board", boardVO);
		request.setAttribute("attachList", attachList);
		forward.setPath("notice/hupdate");
		forward.setRedirect(false);
		return forward;
	}
}
