package web_member_mgn.service;

import java.sql.Connection;

import web_member_mgn.dao.impl.MemberDaoImpl;
import web_member_mgn.ds.JndiDS;
import web_member_mgn.dto.Member;

public class MemberService {
	private Connection con = JndiDS.getConnection();
	private MemberDaoImpl dao;

	public MemberService() {
		dao = MemberDaoImpl.getInstance();
		dao.setCon(con);
	}
	
	public Member loginMember(Member member) {
		return dao.selectMemberById(member);
	}
}
