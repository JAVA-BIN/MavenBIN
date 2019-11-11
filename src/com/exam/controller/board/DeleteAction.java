package com.exam.controller.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.BoardDao;
import com.exam.vo.BoardVO;

public class DeleteAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DeleteAction");
		String pageNum = request.getParameter("pageNum");
		int num = Integer.parseInt(request.getParameter("num"));
		String passwd = request.getParameter("passwd");
		BoardDao boardDao = BoardDao.getInstance(); 
		boolean isPasswdEqual = boardDao.isPasswdEqual(num, passwd);
		System.out.println(num);
		System.out.println(passwd);
		if (!isPasswdEqual) { 
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('password was wrong');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		} else {
		boardDao.deleteBoard(num); // 글삭제처리
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('삭제되었습니다.');");
		out.println("location.href='notice.do';");
		out.println("</script>");
		out.close();
		return null;
		}
	}
}
