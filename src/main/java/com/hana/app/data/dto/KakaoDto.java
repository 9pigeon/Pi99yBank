package com.hana.app.data.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class KakaoDto {
    private long id;
    private String email;
    private String nickname;
}
