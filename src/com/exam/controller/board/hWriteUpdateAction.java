package com.exam.controller.board;

import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;
import com.exam.dao.AttachDao;
import com.exam.dao.BoardDao;
import com.exam.vo.AttachVO;
import com.exam.vo.BoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class hWriteUpdateAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("hWriteUpdateAction");
		// 파일 업로드 수행
		ServletContext application = request.getServletContext();
		String realPath = application.getRealPath("/upload");
		System.out.println("realPath : " + realPath);
		int maxSize = 1024 * 1024 * 10;
		MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "utf-8",
				new DefaultFileRenamePolicy());
		BoardVO boardVO = new BoardVO();
		String pageNum = multi.getParameter("pageNum");
		boardVO.setNum(Integer.parseInt(multi.getParameter("num")));
		boardVO.setSubject(multi.getParameter("subject"));
		boardVO.setContent(multi.getParameter("content"));
		BoardDao boardDao = BoardDao.getInstance();
		boardDao.updateBoard(boardVO);
		
		// 첨부파일 DB등록
		AttachDao attachDao = AttachDao.getInstance();
		Enumeration<String> enu = multi.getFileNames();
		while (enu.hasMoreElements()) {
			String str = enu.nextElement();
			System.out.println(str);
			String realFileName = multi.getFilesystemName(str);
			if (realFileName != null) {
				AttachVO attachVO = new AttachVO();
				UUID uuid = UUID.randomUUID();
				attachVO.setUuid(uuid.toString());
				attachVO.setFilename(realFileName);
				attachVO.setBno(boardVO.getNum());
				File file = new File(realPath, realFileName);
				String contentType = Files.probeContentType(file.toPath());
				boolean isImage = contentType.startsWith("image");
				if (isImage) {
					attachVO.setFiletype("I");
				} else {
					attachVO.setFiletype("O");
				}
				attachDao.insertAttach(attachVO);
			} // if
		} // while
			// 삭제할 파일정보
		String[] delFiles = multi.getParameterValues("delFiles");
		if (delFiles != null) {
			for (String str : delFiles) {
				String[] strArr = str.split("_");
				String uuid = strArr[0];
				String delFilename = strArr[1];
				System.out.println("uuid : " + uuid);
				System.out.println("delFilename : " + delFilename);
				File delFile = new File(realPath, delFilename);
				if (delFile.exists()) {
					delFile.delete();
					System.out.println(delFilename + " 파일 삭제됨.");
				}
				attachDao.deleteAttach(uuid);
			} // for
		} // if
		ActionForward forward = new ActionForward();
		forward.setPath("hnotice.do?pageNum="+pageNum);  
		forward.setRedirect(true);
		return forward;
	}
}
