package com.hana.util;

import com.hana.app.data.DepositKeywordDto;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
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

    public static Map<String, Map<String, String>> parse(String targets) {
        Map<String, Map<String, String>> results = new HashMap<>();
        String[] terms = targets.split("\n");

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

    public static List<DepositKeywordDto> getDeposit(String key) throws IOException, ParseException {
        StringBuilder urlBuilder = new StringBuilder("https://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json");
        urlBuilder.append("?" + URLEncoder.encode("auth","UTF-8")+"="+URLEncoder.encode(key, "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("topFinGrpNo","UTF-8") + "=" + URLEncoder.encode("020000", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8"));

        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");

        int responseCode = conn.getResponseCode();
        if (responseCode >= 200 && responseCode < 300) {
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = rd.readLine()) != null) {
                sb.append(line);
            }
            rd.close();
            conn.disconnect();

            JSONParser jsonParser = new JSONParser();
            JSONObject jsonObject = (JSONObject) jsonParser.parse(sb.toString());

            JSONObject resultObject = (JSONObject) jsonObject.get("result");
            JSONArray depositArray = (JSONArray) resultObject.get("baseList");

            List<DepositKeywordDto> depositKeywordDtoList = new ArrayList<>();
            for(Object object : depositArray){
                JSONObject depositObject = (JSONObject) object;
                Map<String, Map<String, String>> parsedResults = parse((String) depositObject.get("spcl_cnd"));
                for(Map.Entry<String, Map<String, String>> entry : parsedResults.entrySet()){
                    String productId = depositObject.get("fin_prdt_cd").toString();
                    String termId = entry.getKey();
                    String termContent = entry.getValue().get("termContent");
                    String termClass = entry.getValue().get("termClass");
                    String termRate = entry.getValue().get("termRate");

                    System.out.println("상품아이디: " + productId + "   약관아이디:" + termId + "   약관분류:" + termClass + "   약관내용:" + termContent + "   약관비율:" + termRate);
                    DepositKeywordDto depositKeywordDto = DepositKeywordDto.builder()
                            .productId(productId)
                            .termId(termId)
                            .termClass(termClass)
                            .termContent(termContent)
                            .termRate(termRate)
                            .build();
                    depositKeywordDtoList.add(depositKeywordDto);
                }
            }
            return depositKeywordDtoList;
        } else {
            throw new IOException("HTTP error code: " + responseCode);
        }
    }
}
