package com.hana.app.data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DepositDto {
    private String fin_prdt_cd;
    private String dcls_month;
    private long fin_co_no;
    private String kor_co_nm;
    private String fin_prdt_nm;
    private String join_way;
    private String mtrt_int;
    private String spcl_cnd;
    private String join_deny;
    private String join_member;
    private String etc_note;
    private long max_limit;
    private String dcls_strt_day;
    private String dcls_end_day;
    private String fin_co_subm_day;
}
