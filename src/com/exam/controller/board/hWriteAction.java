package com.exam.controller.board;

import java.io.File;
import java.nio.file.Files;
import java.sql.Timestamp;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.AttachDao;
import com.exam.dao.BoardDao;
import com.exam.vo.AttachVO;
import com.exam.vo.BoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class hWriteAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("hWriteAction");
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/upload");
		System.out.println("realPath: " + realPath);
		int maxSize = 1024 * 1024 * 10;
		MultipartRequest multi = new MultipartRequest(
				request, realPath, maxSize, "utf-8",
				new DefaultFileRenamePolicy());
		BoardVO boardVO = new BoardVO();
		BoardDao boardDao = BoardDao.getInstance();
		int num = boardDao.nextBoardNum();
		boardVO.setNum(num);
		boardVO.setUsername(multi.getParameter("username"));
		boardVO.setPasswd(multi.getParameter("passwd"));
		boardVO.setSubject(multi.getParameter("subject"));
		boardVO.setContent(multi.getParameter("content"));
		boardVO.setReadcount(0);
		boardVO.setIp(request.getRemoteAddr());
		boardVO.setRegDate(new Timestamp(System.currentTimeMillis()));
		boardVO.setReRef(num);
		boardVO.setReLev(0);
		boardVO.setReSeq(0);
		boardDao.insertBoard(boardVO);
		Enumeration<String> enu = multi.getFileNames();
		while (enu.hasMoreElements()) { // 다음 요소가 있으면
			String str = enu.nextElement();
			System.out.println(str);
			String realFileName = multi.getFilesystemName(str);
			if (realFileName != null) {
				AttachVO attachVO = new AttachVO();
				UUID uuid = UUID.randomUUID();
				attachVO.setUuid(uuid.toString());
				attachVO.setFilename(realFileName);
				attachVO.setBno(num);
				File file = new File(realPath, realFileName);
				String contentType = Files.probeContentType(file.toPath());
				boolean isImage = contentType.startsWith("image");
				if (isImage) {
					attachVO.setFiletype("I");
				} else {
					attachVO.setFiletype("O");
				}
				AttachDao attachDao = AttachDao.getInstance();
				attachDao.insertAttach(attachVO);
			} // if
		} // while
		ActionForward forward = new ActionForward();
		forward.setPath("hnotice.do");
		forward.setRedirect(true);
		return forward;
	}
}
