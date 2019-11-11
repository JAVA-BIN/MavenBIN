package com.exam.controller.member;

import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.commons.mail.SimpleEmail;

import java.io.File;
import java.io.FileInputStream;
import java.nio.file.Files;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.controller.Action;
import com.exam.controller.ActionForward;

public class EmailAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("EmailAction");
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		
		
		// HTML 형식으로 메일 보내기
		long beginTime = System.currentTimeMillis();
		MultiPartEmail email = new MultiPartEmail();
		// SMTP 서버 연결설정
		email.setHostName("smtp.naver.com");
		email.setSmtpPort(465);
		email.setAuthentication("chea___", "tldn1107");
		// SMTP SSL, TLS 설정
		email.setSSLOnConnect(true);
		email.setStartTLSEnabled(true);
		String result = "fail";
		// 이메일 내용에 일부로써 배치할이미지 파일객체 준비
		try { 
			// 보내는 사람 설정
			email.setFrom("chea___@naver.com", name, "utf-8");
			// 받는 사람 설정
			email.addTo("chea___@naver.com", "관리자님", "utf-8");
			// 제목 설정
			email.setSubject(title);
			// 본문 설정
			email.setMsg(content);
			//email.attach(attachment);
			// 메일 전송
			result = email.send();
		} catch (EmailException e) {
			e.printStackTrace();
		}
		long endTime = System.currentTimeMillis();
		long execTime = endTime - beginTime; // 이메일 전송에 걸린 시간
		System.out.println("execTime : " + execTime + "밀리초");
		System.out.println("result : " + result);
		
		ActionForward forward = new ActionForward();
		forward.setPath("emailForm.do");
		forward.setRedirect(true);
		return forward;
	}
}
