package com.exam.controller.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.MemberDao;

public class MemberDeleteAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String passwd = request.getParameter("passwd");
		request.setCharacterEncoding("utf-8");
		MemberDao memberDao = MemberDao.getInstance(); 
		int check = memberDao.userCheck(id, passwd);
		if (check == 1) {
			memberDao.deleteMember(id);
			session.invalidate();
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('Your MemberShip is done.');");
			out.println("location.href = 'main.do';");
			out.println("</script>");
			out.close();
			return null;
		} else {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('PASSWORD was wrong');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
	}
}
