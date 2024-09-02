package com.example.recipes.member.dto;

import com.example.recipes.constants.RegexType;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Data;

@Data
public class JoinMemberDto {
    @NotBlank(message = "이메일을 입력해주세요.")
    @Email(message = "올바르지 않은 이메일 형식입니다.")
    private String email;

    @NotBlank(message = "비밀번호를 입력해주세요.")
    @Pattern(regexp = RegexType.PASSWORD, message = "올바르지 않은 패스워드 형식입니다.")
    private String password;

    private String memberName;
}
