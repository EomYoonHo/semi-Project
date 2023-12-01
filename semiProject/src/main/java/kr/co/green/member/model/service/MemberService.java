package kr.co.green.member.model.service;

import kr.co.green.member.model.dto.MemberDTO;

public interface MemberService {
	public MemberDTO memberLogin(String email, String pwd);

	public int memberEnroll(MemberDTO memberDTO);

	public int memberDelete(String name, String nickname);

	public boolean duplicateEmail(String email);
}
