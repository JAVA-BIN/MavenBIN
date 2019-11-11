package com.exam.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.MemberDao;
import com.exam.vo.MemberVO;

public class MemberListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberListAction");
			MemberDao memberDao = MemberDao.getInstance();
			List<MemberVO> members = memberDao.getMembers(); 
			request.setAttribute("members", members);
			ActionForward forward = new ActionForward();
			forward.setPath("member/memberList");
			forward.setRedirect(false);   
			return forward;
	}
}
