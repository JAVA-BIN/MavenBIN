package com.exam.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;

public class hreWriteFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("hreWriteFormAction");
		ActionForward forward = new ActionForward();
		forward.setPath("notice/hreWrite");
		forward.setRedirect(false);
		return forward;
	}
}
