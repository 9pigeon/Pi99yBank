package com.hana.app.SQL;

import com.hana.app.data.SavingDto;
import com.hana.app.service.SavingService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest

@Slf4j
public class savingTest {
    @Autowired
    SavingService savingService;
    @Test
    public void getTest() throws Exception {
        log.info(savingService.get().toString());
    }

    @Test
    public void insertTest() throws Exception {
        SavingDto savingDto = SavingDto.builder()
                .dclsMonth("202404")
                .finCoNo(10001)
                .finPrdtCd("PI99YBANK")
                .korCoNm("우리은행")
                .finPrdtNm("WON플러스예금")
                .joinWay("인터넷,스마트폰,전화(텔레뱅킹)")
                .mtrtInt("만기 후- 1개월이내 : 만기시점약정이율×50%- 1개월초과 6개월이내: 만기시점약정이율×30%- 6개월초과 : 만기시점약정이율×20%※ 만기시점 약정이율 : 일반정기예금 금리").spclCnd("해당사항 없음").joinDeny(1).joinMember("실명의 개인")
                .etcNote("- 가입기간: 1~36개월\n- 최소가입금액: 1만원 이상\n- 만기일을 일,월 단위로 자유롭게 선택 가능\n- 만기해지 시 신규일 당시 영업점과 인터넷 홈페이지에 고시된 계약기간별 금리 적용")
                .maxLimit(0)
                .dclsStrtDay("202404240919")
                .dclsEndDay("202404240919")
                .finCoSubmDay("20240424")
                .build();
        savingService.add(savingDto);
        savingDto =  savingService.get("PI99YBANK");
        log.info(savingDto.toString());
    }

    @Test
    public void updateTest() throws Exception {
        SavingDto savingDto = SavingDto.builder()
                .dclsMonth("202401")
                .finCoNo(100011)
                .finPrdtCd("PI99YBANK")
                .korCoNm("피기뱅크")
                .finPrdtNm("하나로적금")
                .joinWay("인터넷,스마트폰,전화(텔레뱅킹)")
                .mtrtInt("만기 후- 1개월이내 : 만기시점약정이율×50%- 1개월초과 6개월이내: 만기시점약정이율×30%- 6개월초과 : 만기시점약정이율×20%※ 만기시점 약정이율 : 일반정기예금 금리").spclCnd("해당사항 없음").joinDeny(1).joinMember("실명의 개인")
                .etcNote("- 가입기간: 1~36개월\n- 최소가입금액: 1만원 이상\n- 만기일을 일,월 단위로 자유롭게 선택 가능\n- 만기해지 시 신규일 당시 영업점과 인터넷 홈페이지에 고시된 계약기간별 금리 적용")
                .maxLimit(0)
                .dclsStrtDay("202404240919")
                .dclsEndDay("202404240919")
                .finCoSubmDay("20240424")
                .build();
        savingService.modify(savingDto);
        savingDto =  savingService.get("PI99YBANK");
        log.info(savingDto.toString());
    }

    @Test
    public void deleteTest() throws Exception {
        savingService.del("PI99YBANK");
        log.info(savingService.get().toString());
    }
}
