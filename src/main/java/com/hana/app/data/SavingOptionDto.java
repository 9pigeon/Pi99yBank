package com.hana.app.data;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SavingOptionDto {
    private String finPrdtCd;
    private String intrRateType;
    private String rsrvType;
    private int saveTrm;
    private double intrRate;
    private double intrRate2;
}
