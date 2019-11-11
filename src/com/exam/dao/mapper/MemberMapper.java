package com.exam.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.exam.vo.MemberVO;

public interface MemberMapper {
	public int insertMember(MemberVO vo);
	public MemberVO getMember(String id);
	@Select("SELECT COUNT(*) AS cnt FROM bmember WHERE id = #{id}")
	public int countMemberById(String id);
	// 전체회원정보 가져오기
	@Select("SELECT * FROM bmember ORDER BY id ASC")
	public List<MemberVO> getMembers();
	@Update("UPDATE bmember SET name=#{name}, age=#{age}, gender=#{gender}, email=#{email} WHERE id = #{id}")
	public void updateMember(MemberVO memberVO);
	@Delete("DELETE FROM bmember WHERE id = #{id}")
	public void deleteMember(String id); 
}
