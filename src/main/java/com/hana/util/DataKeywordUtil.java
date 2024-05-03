package com.hana.util;

import com.hana.app.data.DepositDto;
import com.hana.app.data.DepositKeywordDto;
import com.hana.app.data.DepositKeywordPKDto;
import com.hana.app.data.SavingDto;
import com.hana.app.data.SavingKeywordDto;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataKeywordUtil {
    public static String findRate(String text) {
        // 정규 표현식 패턴
        String pattern = "(\\d+\\.\\d+)%";

        // 패턴에 맞는 문자열을 찾기 위한 Pattern 객체 생성
        Pattern p = Pattern.compile(pattern);
        Matcher m = p.matcher(text);

        // 매칭된 문자열이 있다면 해당 비율 반환
        if (m.find()) {
            return m.group(1);
        } else {
            return "0";
        }
    }

    private static final Pattern[] PATTERNS = {
            Pattern.compile(".*모두|전체.*"),
            Pattern.compile(".*첫|처음|신규|미보유.*"),
            Pattern.compile("(?=.*은행)(?=.*앱)"),
            Pattern.compile(".*재예치|갱신.*"),
            Pattern.compile(".*급여.*"),
            Pattern.compile(".*공과금.*"),
            Pattern.compile(".*연금.*"),
            Pattern.compile(".*입출금.*"),
            Pattern.compile(".*카드.*"),
            Pattern.compile(".*비대면.*"),
            Pattern.compile(".*주거래|장기|기간|실적.*"),
            Pattern.compile(".*MZ|mz|노령|고령|청소년|아동.*"),
            Pattern.compile(".*기념|이벤트|기부|고향|특판.*"),
    };

    public static String classify(String target) {
        for (int i = 0; i < PATTERNS.length; i++) {
            Matcher matcher = PATTERNS[i].matcher(target);
            if (matcher.find()) {
                return (i)+"";
            }
        }
        return PATTERNS.length+"";
    }

    public static Map<String, Map<String, String>> parseSpclCnd(String targets) {
        Map<String, Map<String, String>> results = new HashMap<>();
        String[] terms = targets.split("\\n");
        if (terms.length == 0) {
            terms = targets.split("\\\\n");
        }
        int termId = 0;
        for (String term : terms) {
            if (!term.isEmpty()) {
                Map<String, String> result = new HashMap<>();
                result.put("termClass", classify(term));
                result.put("termContent", term);
                results.put(termId+"", result);
                result.put("termRate", findRate(term));
                termId+=1;
            }
        }
        return results;
    }


    public static List<DepositKeywordDto> toKeywordDtoList(DepositDto depositDto) {
        List<DepositKeywordDto> depositKeywordDtoList = new ArrayList<>();

        Map<String, Map<String, String>> parsedResults = parseSpclCnd(depositDto.getSpclCnd());
        for(Map.Entry<String, Map<String, String>> entry : parsedResults.entrySet()){
            String productId = depositDto.getFinPrdtCd();
            String termId = entry.getKey();
            String termContent = entry.getValue().get("termContent");
            String termClass = entry.getValue().get("termClass");
            String termRate = entry.getValue().get("termRate");
            DepositKeywordPKDto pkDto = DepositKeywordPKDto.builder()
                    .productId(productId)
                    .termId(Integer.parseInt(termId))
                    .build();

            DepositKeywordDto depositKeywordDto = DepositKeywordDto.builder()
                    .productId(productId)
                    .termId(Integer.parseInt(termId))
                    .termClass(Integer.parseInt(termClass))
                    .termContent(termContent)
                    .termRate(Float.parseFloat(termRate))
                    .build();

            depositKeywordDtoList.add(depositKeywordDto);
        }
        return depositKeywordDtoList;

    }


    public static List<SavingKeywordDto> toSavingKeywordDtoList(SavingDto savingDto) {
        List<SavingKeywordDto> savingKeywordDtoList = new ArrayList<>();

        Map<String, Map<String, String>> parsedResults = parseSpclCnd(savingDto.getSpclCnd());
        for(Map.Entry<String, Map<String, String>> entry : parsedResults.entrySet()){
            String productId = savingDto.getFinPrdtCd();
            String termId = entry.getKey();
            String termContent = entry.getValue().get("termContent");
            String termClass = entry.getValue().get("termClass");
            String termRate = entry.getValue().get("termRate");
            SavingKeywordDto savingKeywordDto = SavingKeywordDto.builder()
                    .productId(productId)
                    .termId(termId)
                    .termClass(termClass)
                    .termContent(termContent)
                    .termRate(termRate)
                    .build();
            savingKeywordDtoList.add(savingKeywordDto);
        }
        return savingKeywordDtoList;
    }
}
