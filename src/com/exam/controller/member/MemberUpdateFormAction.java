package com.exam.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.MemberDao;
import com.exam.vo.MemberVO;

public class MemberUpdateFormAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		MemberDao memberDao = MemberDao.getInstance();
		MemberVO member = memberDao.getMember(id);
		request.setAttribute("id", id); 
		request.setAttribute("member", member);
		ActionForward forward = new ActionForward();
		forward.setPath("member/update");
		forward.setRedirect(false);
		return forward;
	}
}
