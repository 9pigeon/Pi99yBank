package com.hana.app.deposit;

import com.hana.util.DepositUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SpringBootTest
@Slf4j
class Test{
    private static final Pattern[] PATTERNS = {
            Pattern.compile(".*모두.*"),
            Pattern.compile(".*첫|처음|등록|가입|신규|미보유.*"),
            Pattern.compile(".*동의|마케팅|알리기|알림|앱.*"),
            Pattern.compile(".*재예치|갱신.*"),
            Pattern.compile(".*이체|급여|연동|연금|입출금|카드.*"),
            Pattern.compile(".*실적.*"),
            Pattern.compile(".*비대면.*"),
            Pattern.compile(".*주거래|장기|기간.*"),
            Pattern.compile(".*MZ|mz|노령|고령|청소년|아동.*"),
            Pattern.compile(".*해당무|해당사항없음|없.*"),
            Pattern.compile(".*추가|조건.*"),
            Pattern.compile(".*기념|이벤트|기부|고향.*"),
    };

    public static String classify(String target) {
        for (int i = 0; i < PATTERNS.length; i++) {
            Matcher matcher = PATTERNS[i].matcher(target);
            if (matcher.find()) {
                return (i + 1)+"";
            }
        }
        return "0";
    }

    public static Map<String, Map<String, String>> parse(String targets) {
        Map<String, Map<String, String>> results = new HashMap<>();
        String[] lines = targets.split("\n");

        int idx = 0;
        for (String line : lines) {
            if (!line.isEmpty()) {
                Map<String, String> result = new HashMap<>();
                result.put("classification", classify(line));
                result.put("line", line);
                results.put(idx+"", result);
                idx+=1;
            }
        }
        return results;
    }

    @org.junit.jupiter.api.Test
    void contextLoads() throws IOException, ParseException {
        String key = "afacb093b54042de08854e5b660d73b6";
        JSONObject jsonObject = (JSONObject) DepositUtil.getDeposit(key);
        JSONObject resultObject = (JSONObject) jsonObject.get("result");
        JSONArray depositArray = (JSONArray) resultObject.get("baseList");

        for(Object object : depositArray){
            JSONObject depositObject = (JSONObject) object;
            log.info("-----------product of : "+depositObject.get("kor_co_nm").toString()+"-----------");
            Map<String, Map<String, String>> parsedResults = parse((String) depositObject.get("spcl_cnd"));
            for(Map.Entry<String, Map<String, String>> entry : parsedResults.entrySet()){
                String idx = entry.getKey();
                String line = entry.getValue().get("line");
                String classification = entry.getValue().get("classification");
                System.out.println("약관번호:"+idx+"   약관분류:"+classification+"   약관내용:"+line);
            }
        }
    }
}
