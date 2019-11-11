package com.exam.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.MemberDao;
import com.exam.vo.MemberVO;
import com.sun.jmx.snmp.Timestamp;

public class MemberJoinAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberJoinAction");
		MemberVO memberVO = new MemberVO();
		memberVO.setId(request.getParameter("id"));
		memberVO.setPasswd(request.getParameter("passwd"));
		memberVO.setName(request.getParameter("name"));
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setGender(request.getParameter("gender"));
		// + 가입날짜
		//memberVO.setRegDate(new Timestamp(System.currentTimeMillis());
		MemberDao memberDao = MemberDao.getInstance();
		memberDao.insertMember(memberVO);
		ActionForward forward = new ActionForward();
		forward.setPath("memberLoginForm.do");
		forward.setRedirect(true);
		return forward;
	}
}
