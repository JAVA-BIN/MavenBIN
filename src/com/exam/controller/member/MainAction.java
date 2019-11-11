package com.exam.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.BoardDao;
import com.exam.vo.BoardVO;

public class MainAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MainAction");
		String search = request.getParameter("search");
		if (search == null) {
			search ="";
		}
		String strPageNum = request.getParameter("pageNum");
		if (strPageNum == null) {
			strPageNum = "1";
		}
		int pageNum = Integer.parseInt(strPageNum);
		BoardDao boardDao = BoardDao.getInstance();
		int pageSize = 5;
		int startRow = (pageNum-1) * pageSize+1;
		int count = boardDao.getBoardCount(search);
		List<BoardVO> boardList = boardDao.getBoards(startRow, pageSize, search);
		request.setAttribute("boardList", boardList);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("count", count);
		ActionForward forward = new ActionForward();
		forward.setPath("main/main");
		forward.setRedirect(false);
		return forward;
	}
}
