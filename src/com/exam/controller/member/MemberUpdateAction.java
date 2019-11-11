package com.exam.controller.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.MemberDao;
import com.exam.vo.MemberVO;

public class MemberUpdateAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String passwd = request.getParameter("passwd");
		MemberDao memberDao = MemberDao.getInstance();
		MemberVO memberVO = memberDao.getMember(id);
		int check = memberDao.userCheck(id, passwd);
	    if (check == 1) {
	    	memberVO.setId(request.getParameter("id"));
	    	memberVO.setName(request.getParameter("name"));
	    	memberVO.setEmail(request.getParameter("email"));
	        memberDao.updateMember(memberVO);
	        PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('SUCCESS');");
			out.println("location.href='mypageForm.do';");
			out.println("</script>");
			out.close();
	        return null;
	    } else {
	    	PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('PASSWORD was wrong');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
	    }
	}
}
