package com.example.recipes.member.controller;

import com.example.recipes.common.CommonResponse;
import com.example.recipes.exception.DuplicateUserException;
import com.example.recipes.member.dto.JoinMemberDto;
import com.example.recipes.member.service.JoinService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {
    private final JoinService joinService;

    @PostMapping("/join")
    public CommonResponse joinMember(@Valid @RequestBody final JoinMemberDto dto){
        CommonResponse commonResponse = new CommonResponse();  // CommonResponse의 경우 아래 소스 참조

        try {
            joinService.joinMember(dto);
        } catch (DuplicateUserException e) {
            // DuplicateUserException의 경우, 이미 회원 가입을 진행한 유저 email일 경우 joinService에서 throw 합니다.
            commonResponse.setError(HttpStatus.BAD_REQUEST, e.getMessage());
        }

        return commonResponse; // 성공할 경우 200 status return
    }
}
