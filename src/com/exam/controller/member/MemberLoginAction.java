package com.exam.controller.member;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.MemberDao;

public class MemberLoginAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberLoginAction");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String rememberMe = request.getParameter("rememberMe");
		MemberDao memberDao = MemberDao.getInstance();
		int check = memberDao.userCheck(id, passwd);
		if (check == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('password was wrong!!!!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		} else if (check == -1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('ID was wrong!!!!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		if (rememberMe != null && rememberMe.equals("true")) {
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60*10);
			cookie.setPath("/");
			response.addCookie(cookie);
		}
		ActionForward forward = new ActionForward();
		forward.setPath("main.do");
		forward.setRedirect(true);
		return forward;
	}
}
