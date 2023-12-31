package com.art.project.member.service;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.art.project.member.dto.MemberDTO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter @Setter
@ToString
public class SecurityUser extends User {

	private static final long serialVersionUID = 1L;
	
	private MemberDTO member;

    public SecurityUser(MemberDTO member) {
    	super(member.getMember_name(), member.getMember_password(), AuthorityUtils.createAuthorityList("ROLE_" + member.getMember_role()));// principal안에잇는것은 name이다
    	
    	 log.info("SecurityUser member.username = {}", member.getMember_name());
         log.info("SecurityUser member.password = {}", member.getMember_password());
         log.info("SecurityUser member.role = {}", member.getMember_role());

         this.member = member;
    }

}
