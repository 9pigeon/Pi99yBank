package com.hana.app.data;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;
import com.hana.app.data.DepositOptionDto;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DepositDto {
    private String finPrdtCd;
    private String dclsMonth;
    private int finCoNo;
    private String korCoNm;
    private String finPrdtNm;
    private String joinWay;
    private String mtrtInt;
    private String spclCnd;
    private int joinDeny;
    private String joinMember;
    private String etcNote;
    private Long maxLimit;
    private String dclsStrtDay;
    private String dclsEndDay;
    private String finCoSubmDay;
    private double basicIntr;
    private double bestIntr;
    private String imgUrl;
}
