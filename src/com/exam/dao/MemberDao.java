package com.exam.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.exam.dao.mapper.MemberMapper;
import com.exam.vo.MemberVO;

public class MemberDao {
	private static final MemberDao instance = new MemberDao();
	public static MemberDao getInstance() {
		return instance;
	}
	private MemberDao() {
	} // 생성자
	
	// 아이디 중복여부 확인
	public boolean isIdDuplicated(String id) {
		boolean isIdDuplicated = false;
		try (SqlSession sqlSession = DBManager.getSqlSessionFactory().openSession()){
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			// 회원 가입(추가)
			int count = mapper.countMemberById(id);
			if (count > 0) {
				isIdDuplicated = true;
			}
		return isIdDuplicated;
		} 
	} // isIdDuplicated method
	

	public void insertMember(MemberVO vo) {
		try (SqlSession sqlSession = DBManager.getSqlSessionFactory().openSession()){
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			// 회원 가입(추가)
			int count = mapper.insertMember(vo);
			// 커밋
			if (count > 0) {
			    sqlSession.commit();
			} else {
			    sqlSession.rollback();
			}
		} 
	} // insertMember method

	
	public MemberVO getMember(String id) {
		try (SqlSession sqlSession = DBManager.getSqlSessionFactory().openSession()){
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			// 회원 가입(추가)
			MemberVO memberVO = mapper.getMember(id);
			return memberVO;
		} 
	} // getMember method
	
	
	public int userCheck(String id, String passwd) {
		int check = -1; // -1 아이디 불일치. 0 패스워드 불일치. 1 일치
		try (SqlSession sqlSession = DBManager.getSqlSessionFactory().openSession()){
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			// 회원 정보 가져오기
			MemberVO memberVO = mapper.getMember(id);
			if (memberVO != null) {
				if (passwd.contentEquals(memberVO.getPasswd())) {
					check = 1; // id,password 일치
				}else {
					check = 0; //password 불일치
				}
			} else { // memberVO == null
				check = -1; // id 없음
			}
			return check;
		} 
	} // userCheck method
	
	
	// 전체 회원정보 가져오기
	public List<MemberVO> getMembers() {  
		try (SqlSession sqlSession = DBManager.getSqlSessionFactory().openSession()){
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			// 회원 정보 리스트 가져오기
			List<MemberVO> list = mapper.getMembers();
			// JDBC 자원 닫기
			sqlSession.close();
			return list;
		} 
	} // getMembers method

	
	// 회원 업데이트
	public void updateMember(MemberVO memberVO) {
		try (SqlSession sqlSession = DBManager.getSqlSessionFactory().openSession()){
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			// 회원정보 수정
			mapper.updateMember(memberVO);
			sqlSession.commit();
		} 
	} // updateMember method
	
	
	// 회원 삭제
	public void deleteMember(String id) {
		try (SqlSession sqlSession = DBManager.getSqlSessionFactory().openSession()){
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			// 회원정보 수정
			mapper.deleteMember(id);
			sqlSession.commit();
		} 
	} // updateMember method
} // class  