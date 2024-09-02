package com.example.recipes.member.entity;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@Table(name = "member")
@NoArgsConstructor
public class Member{
    @Id
    @Column(name = "member_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int memberId;
    @Column(nullable = false)
    private String memberName;
    @Column(nullable = false)
    private String email;
    @Column(nullable = false)
    private String password;
    private String profileImageUrl;

    @Builder
    public Member(String memberName, String email, String password){
        // 회원가입
        this.memberName = memberName;
        this.email = email;
        this.password = password;
    }
}
