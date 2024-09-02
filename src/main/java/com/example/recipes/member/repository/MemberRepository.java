package com.example.recipes.member.repository;

import com.example.recipes.member.entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface MemberRepository extends JpaRepository<Member, Long> {
    Optional<Member> findByEmail(String email); // 이메일로 유저 검색
    boolean existByEmail(String email); // 이메일로 유저가 존재하는지 검사
}
