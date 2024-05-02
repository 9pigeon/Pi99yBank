package com.hana.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hana.app.data.*;
import com.hana.app.service.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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

    @Autowired
    SavingService savingService;

    @Autowired
    SavingKeywordService savingKeywordService;

    @Autowired
    SavingOptionService savingOptionService;

    @Autowired
    DepositService depositService;

    @Autowired
    DepositKewordService depositKewordService;

    @Autowired
    DepositOptionService depositOptionService;

    public List<SavingDto> getSavings() throws Exception {
        List<SavingDto> savings = new ArrayList<>();
        ObjectMapper objectMapper = new ObjectMapper();
        log.info(key);
        String sendUrl = "https://finlife.fss.or.kr/finlifeapi/savingProductsSearch.json?auth="+key+"&topFinGrpNo=020000&pageNo=1";
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
        if(baseList.size()>0){
            savingService.reset();
            savingKeywordService.reset();
            savingOptionService.reset();
        }
        for (int i=0;i<baseList.size();i++){
            JSONObject obj = (JSONObject) baseList.get(i);
            SavingDto savingDto = SavingDto.builder()
                    .finPrdtCd(obj.get("fin_prdt_cd").toString())
                    .finPrdtNm(obj.get("fin_prdt_nm").toString())
                    .dclsMonth(obj.get("dcls_month").toString())
                    .finCoNo(Integer.parseInt(obj.get("fin_co_no").toString()))
                    .korCoNm(obj.get("kor_co_nm").toString())
                    .joinWay(obj.get("join_way").toString())
                    .mtrtInt(obj.get("mtrt_int").toString())
                    .spclCnd(obj.get("spcl_cnd").toString())
                    .joinDeny(Integer.parseInt(obj.get("join_deny").toString()))
                    .joinMember(obj.get("join_member").toString())
                    .etcNote(obj.get("etc_note").toString())
                    .maxLimit(Integer.parseInt(obj.get("max_limit")==null?"0":obj.get("max_limit").toString()))
                    .dclsStrtDay(obj.get("dcls_strt_day").toString())
                    .dclsEndDay(obj.get("dcls_end_day")==null?"":obj.get("dcls_end_day").toString())
                    .finCoSubmDay(obj.get("fin_co_subm_day").toString())
                    .build();
            savings.add(savingDto);
            savingService.add(savingDto);
            List<SavingKeywordDto> savingKeywords =  DataKeywordUtil.toSavingKeywordDtoList(savingDto);
            for (int j=0;j<savingKeywords.size();j++){
                savingKeywordService.add(savingKeywords.get(j));
            }
        }
        JSONArray optionList = (JSONArray) result.get("optionList");
        for (int i=0;i<optionList.size();i++){
            JSONObject option = (JSONObject) optionList.get(i);
            if(option.get("rsrv_type")==null){
                log.info("\n\n\n\n\n"+option.toString()+"\n\n\n\n\n");
            }
            SavingOptionDto savingOptionDto = SavingOptionDto.builder()
                    .finPrdtCd(option.get("fin_prdt_cd").toString())
                    .intrRateType(option.get("intr_rate_type").toString())
                    .rsrvType(option.get("rsrv_type").toString())
                    .saveTrm(Integer.parseInt(option.get("save_trm").toString()))
                    .intrRate(Double.parseDouble(option.get("intr_rate").toString()))
                    .intrRate2(Double.parseDouble(option.get("intr_rate2").toString()))
                    .build();
            savingOptionService.add(savingOptionDto);
        }

        log.info(baseList.toString());
        br.close();
        conn.disconnect();
        return savings;
    }

    public List<DepositDto> getDeposits() throws Exception {
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
        if(baseList.size()>0){
            depositService.reset();
            depositKewordService.reset();
            depositOptionService.reset();
        }
        for (int i=0;i<baseList.size();i++){
            JSONObject obj = (JSONObject) baseList.get(i);
            DepositDto depositDto = DepositDto.builder()
                    .finPrdtCd(obj.get("fin_prdt_cd").toString())
                    .finPrdtNm(obj.get("fin_prdt_nm").toString())
                    .dclsMonth(obj.get("dcls_month").toString())
                    .finCoNo(Integer.parseInt(obj.get("fin_co_no").toString()))
                    .korCoNm(obj.get("kor_co_nm").toString())
                    .joinWay(obj.get("join_way").toString())
                    .mtrtInt(obj.get("mtrt_int").toString())
                    .spclCnd(obj.get("spcl_cnd").toString())
                    .joinDeny(Integer.parseInt(obj.get("join_deny").toString()))
                    .joinMember(obj.get("join_member").toString())
                    .etcNote(obj.get("etc_note").toString())
                    .maxLimit(Integer.parseInt(obj.get("max_limit")==null?"0":obj.get("max_limit").toString()))
                    .dclsStrtDay(obj.get("dcls_strt_day").toString())
                    .dclsEndDay(obj.get("dcls_end_day")==null?"":obj.get("dcls_end_day").toString())
                    .finCoSubmDay(obj.get("fin_co_subm_day").toString())
                    .build();
            deopsits.add(depositDto);
            depositService.add(depositDto);
        }
        JSONArray optionList = (JSONArray) result.get("optionList");
        for (int i=0;i<optionList.size();i++){
            JSONObject option = (JSONObject) optionList.get(i);
            DepositOptionDto depositOptionDto = DepositOptionDto.builder()
                    .finPrdtCd(option.get("fin_prdt_cd").toString())
                    .intrRateType(option.get("intr_rate_type").toString())
                    .saveTrm(Integer.parseInt(option.get("save_trm").toString()))
                    .intrRate(Double.parseDouble(option.get("intr_rate").toString()))
                    .intrRate2(Double.parseDouble(option.get("intr_rate2").toString()))
                    .build();
            depositOptionService.add(depositOptionDto);
        }
        log.info(baseList.toString());
        br.close();
        conn.disconnect();
        return deopsits;
    }
}
