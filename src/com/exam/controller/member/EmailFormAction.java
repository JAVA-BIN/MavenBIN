package com.exam.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;

public class EmailFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("EmailFormAction");
		ActionForward forward = new ActionForward();
		forward.setPath("main/email");
		forward.setRedirect(false);
		return forward;
	}
}
