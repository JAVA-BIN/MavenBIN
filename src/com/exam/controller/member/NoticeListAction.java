package com.exam.controller.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.BoardDao;
import com.exam.vo.BoardVO;

public class NoticeListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeListAction");
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
		int pageSize = 8;
		int startRow = (pageNum-1) * pageSize+1;
		List<BoardVO> boardList = boardDao.getBoards(startRow, pageSize, search);
		int count = boardDao.getBoardCount(search);
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int pageBlock = 5;
		int startPage = ((pageNum - 1) / pageBlock) * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) {
			endPage = pageCount;
		}
		Map<String, Integer> pageInfoMap = new HashMap<String, Integer>();
		pageInfoMap.put("count", count);
		pageInfoMap.put("pageCount", pageCount); 
		pageInfoMap.put("pageBlock", pageBlock);
		pageInfoMap.put("startPage", startPage);
		pageInfoMap.put("endPage", endPage);
		request.setAttribute("boardList", boardList);
		request.setAttribute("pageInfoMap", pageInfoMap);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("search", search);
		ActionForward forward = new ActionForward();
		forward.setPath("member/noticeList");
		forward.setRedirect(false);
		return forward; 
	}
}
