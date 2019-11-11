package com.exam.controller.member;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.MemberDao;

public class MemberListDeleteAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberListDeleteAction");
		request.setCharacterEncoding("utf-8");
		String[] ids = request.getParameterValues("ids"); 
		if (ids != null) {
			for (int i = 0; i < ids.length; i++) {
				System.out.println(ids[i]);
				String id = ids[i];
				MemberDao memberDao = MemberDao.getInstance(); 
				memberDao.deleteMember(id);
			}
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('MemberShip is deleted.');");			
			out.println("location.href = 'memberList.do';");
			out.println("</script>");
			out.close();
			return null;
		} else {
			ActionForward forward = new ActionForward();
			forward.setPath("memberList.do");
			forward.setRedirect(true);
			return forward;
		}
	}
}
