package com.hana.app.data;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SavingKeywordDto {
    private String productId;
    private String termId;
    private String termClass;
    private String termContent;
    private String termRate;

    public String getTermClassName(){
        String[] termClassNames = {"", "첫거래", "앱사용","재예치","급여","공과금","연금","입출금","카드","비대면","주거래/실적","계층우대","특판"};
        return termClassNames[Integer.parseInt(termClass)];
    }
}