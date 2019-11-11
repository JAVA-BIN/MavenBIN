package com.exam.controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;

public class reWriteFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("reWriteFormAction");
		ActionForward forward = new ActionForward();
		forward.setPath("notice/reWrite");
		forward.setRedirect(false);
		return forward;
	}
}
