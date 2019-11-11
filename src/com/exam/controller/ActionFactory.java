package com.exam.controller;
import java.util.HashMap;
import java.util.Map;

import com.exam.controller.board.ContentAction;
import com.exam.controller.board.DeleteAction;
import com.exam.controller.board.NoticeAction;
import com.exam.controller.board.UpdateAction;
import com.exam.controller.board.UpdateFormAction;
import com.exam.controller.board.WriteAction;
import com.exam.controller.board.WriteFormAction;
import com.exam.controller.board.hContentAction;
import com.exam.controller.board.hDeleteAction;
import com.exam.controller.board.hDeleteFormAction;
import com.exam.controller.board.hNoticeAction;
import com.exam.controller.board.hWriteAction;
import com.exam.controller.board.hWriteFormAction;
import com.exam.controller.board.hWriteUpdateAction;
import com.exam.controller.board.hWriteUpdateFormAction;
import com.exam.controller.board.hreWriteAction;
import com.exam.controller.board.hreWriteFormAction;
import com.exam.controller.board.reWriteAction;
import com.exam.controller.board.reWriteFormAction;
import com.exam.controller.member.EmailAction;
import com.exam.controller.member.EmailFormAction;
import com.exam.controller.member.JoinIdDupCheckJsonAction;
import com.exam.controller.member.MainAction;
import com.exam.controller.member.MemberDeleteAction;
import com.exam.controller.member.MemberDeleteFormAction;
import com.exam.controller.member.MemberJoinAction;
import com.exam.controller.member.MemberJoinFormAction;
import com.exam.controller.member.MemberListAction;
import com.exam.controller.member.MemberListDeleteAction;
import com.exam.controller.member.MemberLoginAction;
import com.exam.controller.member.MemberLoginFormAction;
import com.exam.controller.member.MemberLogoutAction;
import com.exam.controller.member.MemberUpdateAction;
import com.exam.controller.member.MemberUpdateFormAction;
import com.exam.controller.member.MyPageForm;
import com.exam.controller.member.NoticeListAction;
import com.exam.controller.member.NoticeListDeleteAction;
import com.exam.menu.ExperienceForm;
import com.exam.menu.ExperienceForm2;
import com.exam.menu.ExperienceForm3;
import com.exam.menu.ExperienceForm4;
import com.exam.menu.IntroduceForm;
import com.exam.menu.IntroduceForm2;
import com.exam.menu.IntroduceForm3;
import com.exam.menu.IntroduceForm4;
import com.exam.menu.PhotosForm;

public class ActionFactory {
private Map<String, Action> map = new HashMap<String, Action>();
	
	private static ActionFactory instance = new ActionFactory();
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	private ActionFactory() { 
		// member 명령어 관련 Action객체 등록
		map.put("/memberJoinForm.do", new MemberJoinFormAction());
		map.put("/memberJoin.do", new MemberJoinAction());
		map.put("/memberLoginForm.do", new MemberLoginFormAction());
		map.put("/memberLogin.do", new MemberLoginAction());
		map.put("/main.do", new MainAction());
		map.put("/memberLogout.do", new MemberLogoutAction());
		map.put("/joinIdDupCheckJson.do", new JoinIdDupCheckJsonAction());
		map.put("/mypageForm.do", new MyPageForm());
		map.put("/memberUpdateForm.do", new MemberUpdateFormAction());
		map.put("/memberUpdate.do", new MemberUpdateAction());
		map.put("/memberDeleteForm.do", new MemberDeleteFormAction());
		map.put("/memberDelete.do", new MemberDeleteAction());
		map.put("/emailForm.do", new EmailFormAction());
		map.put("/email.do", new EmailAction());   
		map.put("/memberList.do", new MemberListAction());  
		map.put("/memberListDelete.do", new MemberListDeleteAction());
		map.put("/noticeList.do", new NoticeListAction()); 
		map.put("/noticeListDelete.do", new NoticeListDeleteAction());
		// Notice
		map.put("/notice.do", new NoticeAction());
		map.put("/writeForm.do", new WriteFormAction());
		map.put("/write.do", new WriteAction());
		map.put("/content.do", new ContentAction());
		map.put("/updateForm.do", new UpdateFormAction()); 
		map.put("/update.do", new UpdateAction());  
		map.put("/delete.do", new DeleteAction());  
		map.put("/reWriteForm.do", new reWriteFormAction());
		map.put("/reWrite.do", new reWriteAction());
		// Form
		map.put("/personal.do", new IntroduceForm());
		map.put("/personal2.do", new IntroduceForm2());
		map.put("/personal3.do", new IntroduceForm3());
		map.put("/personal4.do", new IntroduceForm4());
		map.put("/experience.do", new ExperienceForm());
		map.put("/experience2.do", new ExperienceForm2());
		map.put("/experience3.do", new ExperienceForm3());
		map.put("/experience4.do", new ExperienceForm4());
		map.put("/photos.do", new PhotosForm());
		// File
		map.put("/hnotice.do", new hNoticeAction());
		map.put("/hWriteForm.do", new hWriteFormAction());
		map.put("/hWrite.do", new hWriteAction());
		map.put("/hcontent.do", new hContentAction());
		map.put("/hreWriteForm.do", new hreWriteFormAction());
		map.put("/hreWrite.do", new hreWriteAction());
		map.put("/hupdateForm.do", new hWriteUpdateFormAction());
		map.put("/hupdate.do", new hWriteUpdateAction());
		map.put("/hdeleteForm.do", new hDeleteFormAction());
		map.put("/hdelete.do", new hDeleteAction());
		 
		} // 생성자
	
	public Action getAction(String command) {
		Action action = map.get(command);
		return action;
	} // getAction method

}
