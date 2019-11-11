package com.exam.controller.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.BoardDao;
import com.exam.dao.MemberDao;

public class NoticeListDeleteAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeListDeleteAction");
		request.setCharacterEncoding("utf-8");
		
		String[] nums = request.getParameterValues("nums");
		if (nums != null) {
			for (int i = 0; i < nums.length; i++) {
				System.out.println(nums[i]);
				int num = Integer.parseInt(nums[i]);
				BoardDao boardDao = BoardDao.getInstance(); 
				boardDao.deleteBoard(num);
			}
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('Posts are deleted.');");			
			out.println("location.href = 'noticeList.do';");
			out.println("</script>");
			out.close();
			return null;
		} else {
			ActionForward forward = new ActionForward();
			forward.setPath("noticeList.do");
			forward.setRedirect(true);
			return forward;
		}
	}
}
