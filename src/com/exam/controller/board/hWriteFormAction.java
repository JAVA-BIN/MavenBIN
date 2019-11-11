package com.exam.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;

public class hWriteFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("hWriteFormAction");
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		if (id == null) {
			forward.setPath("notice.do");
			forward.setRedirect(true);
			return forward;
		}
		forward.setPath("notice/hwrite");
		forward.setRedirect(false);
		return forward;
	}
}
