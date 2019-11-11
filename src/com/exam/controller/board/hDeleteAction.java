package com.exam.controller.board;


import java.io.File;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.AttachDao;
import com.exam.dao.BoardDao;
import com.exam.vo.AttachVO;
import com.exam.vo.BoardVO;

public class hDeleteAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("hDeleteAction");
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		if (id == null) {
			forward.setPath("hnotice.do");
			forward.setRedirect(true);
			return forward;
		}
		String pageNum = request.getParameter("pageNum");
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDao boardDao = BoardDao.getInstance();
		BoardVO boardVO = boardDao.getBoard(num);
		if (!id.equals(boardVO.getUsername())) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제 권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		boardDao.deleteBoard(num);
		AttachDao attachDao = AttachDao.getInstance();
		List<AttachVO> attachList = attachDao.getAttaches(num);
		ServletContext application = request.getServletContext();
		for (AttachVO attachVO : attachList) {
			String realPath = application.getRealPath("/upload");
			File file = new File(realPath, attachVO.getFilename());
			if (file.exists()) {
				file.delete();
			}
		} // for
		attachDao.deleteAttach(num);
		forward.setPath("hnotice.do?pageNum="+pageNum);
		forward.setRedirect(true);
		return forward;
	}
}
