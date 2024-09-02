package com.example.recipes.member.service;

import com.example.recipes.exception.DuplicateUserException;
import com.example.recipes.member.dto.JoinMemberDto;
import com.example.recipes.member.entity.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class JoinService {
    private final MemberService memberService;
    private final PasswordEncoder passwordEncoder;

    public void joinMember(final JoinMemberDto joinUserDto) throws DuplicateUserException {
        String email = joinUserDto.getEmail();
        if(memberService.existByEmail(email)) {  // 해당 이메일로 이미 가입한 유저가 있을 경우 Exception
            throw new DuplicateUserException("이미 가입한 회원입니다.");
        }

        // 회원 가입
        String encodedPassword = passwordEncoder.encode(joinUserDto.getPassword());
        Member member = Member.builder()
                .email(email)
                .password(encodedPassword)
                .memberName(joinUserDto.getMemberName())
                .build();
        memberService.save(member);
    }

}