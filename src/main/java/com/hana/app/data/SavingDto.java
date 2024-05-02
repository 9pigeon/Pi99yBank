package com.hana.app.data;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SavingDto {
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
    private int maxLimit;
    private String dclsStrtDay;
    private String dclsEndDay;
    private String finCoSubmDay;
    private List optionList;
}
