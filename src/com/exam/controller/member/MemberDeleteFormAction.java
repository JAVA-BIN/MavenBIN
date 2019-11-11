package com.exam.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;

public class MemberDeleteFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		request.setAttribute("id", id);
		ActionForward forward = new ActionForward();
		forward.setPath("member/delete");
		forward.setRedirect(false);
		return forward;
	}
}
