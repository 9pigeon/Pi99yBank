package com.hana.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hana.app.data.dto.DepositDto;
import com.hana.app.data.dto.SavingDto;
import lombok.experimental.UtilityClass;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Component
public class DataUtil {

    @Value(value = "${finlife.key}")
    String key;

    public List<SavingDto> getSavings() throws IOException, ParseException {
        List<SavingDto> savings = new ArrayList<>();
        ObjectMapper objectMapper = new ObjectMapper();
        log.info(key);
        String sendUrl = "https://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?auth="+key+"&topFinGrpNo=020000&pageNo=1";
        StringBuilder urlBuilder = new StringBuilder(sendUrl); /*URL*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        BufferedReader br;
        br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line;
        StringBuilder response = new StringBuilder();
        while ((line = br.readLine()) != null) {
            response.append(line);
        }
        JSONObject resJson = (JSONObject) new JSONParser().parse(response.toString());
        JSONObject result = (JSONObject) resJson.get("result");
        JSONArray baseList = (JSONArray) result.get("baseList");
        for (int i=0;i<baseList.size();i++){
            JSONObject obj = (JSONObject) baseList.get(i);
            savings.add(objectMapper.readValue(obj.toString(), SavingDto.class));
        }
        log.info(baseList.toString());
        br.close();
        conn.disconnect();
        return savings;
    }

    public List<DepositDto> getDeposits() throws IOException, ParseException {
        List<DepositDto> deopsits = new ArrayList<>();
        ObjectMapper objectMapper = new ObjectMapper();
        log.info(key);
        String sendUrl = "https://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?auth="+key+"&topFinGrpNo=020000&pageNo=1";
        StringBuilder urlBuilder = new StringBuilder(sendUrl); /*URL*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        BufferedReader br;
        br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String line;
        StringBuilder response = new StringBuilder();
        while ((line = br.readLine()) != null) {
            response.append(line);
        }
        JSONObject resJson = (JSONObject) new JSONParser().parse(response.toString());
        JSONObject result = (JSONObject) resJson.get("result");
        JSONArray baseList = (JSONArray) result.get("baseList");
        for (int i=0;i<baseList.size();i++){
            JSONObject obj = (JSONObject) baseList.get(i);
            deopsits.add(objectMapper.readValue(obj.toString(), DepositDto.class));
        }
        log.info(baseList.toString());
        br.close();
        conn.disconnect();
        return deopsits;
    }
}
