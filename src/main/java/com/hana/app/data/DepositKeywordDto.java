package com.hana.app.data;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DepositKeywordDto {
    private String productId;
    private String termId;
    private String termClass;
    private String termContent;
    private String termRate;
}
