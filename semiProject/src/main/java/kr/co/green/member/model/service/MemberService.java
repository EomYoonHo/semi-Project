package kr.co.green.member.model.service;

import kr.co.green.member.model.dto.MemberDTO;

public interface MemberService {
	public MemberDTO memberLogin(String email);

	public int memberEnroll(MemberDTO memberDTO);

	public int memberDelete(String name, String nickname);

	public boolean duplicateEmail(String email);

	public void selectMember(MemberDTO memberDTO);
	
	public MemberDTO retrieveMember(String email);

	public int memberUpdate(MemberDTO memberdto);

}



