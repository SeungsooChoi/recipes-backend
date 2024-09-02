package com.example.recipes.member.service;

import com.example.recipes.member.entity.Member;
import com.example.recipes.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MemberService {
    private final MemberRepository memberRepository;

    // 가입된 유저가 있는지 검사
    public boolean existByEmail(String email){
        return memberRepository.existByEmail(email);
    }

    // memberId를 통한 유저 검색
    public Member getById(long memberId){
        // UsernameNotFoundException 사용은 ExceptionHandler를 사용하기 위함
        return memberRepository.findById(memberId)
                .orElseThrow(() -> new UsernameNotFoundException("해당 유저를 찾을 수 없습니다."));
    }

    // email을 통한 유저 검색
    public Member getByEmail(String email){
        return memberRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("해당 유저를 찾을 수 없습니다."));
    }

    // 회원가입, 유저 수정  유저 데이터 저장시 사용
    @Transactional
    public void save(Member member){
        memberRepository.save(member);
    }
}
