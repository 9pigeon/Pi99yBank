package com.hana.controller;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.service.KakaoService;
import com.hana.util.DataKeywordUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class MainController {
    private final KakaoService kakaoService;


    @RequestMapping("/")
    public String home(Model model) {
        String url = kakaoService.getKakaoLogin();
        log.info(url);
        model.addAttribute("kakaoUrl", url);
        return "index";
    }

    @RequestMapping("/main")
    public String main(Model model) {
        model.addAttribute("center", "test");
        return "index";
    }

    @RequestMapping("/deposit")
    public String deposit(Model model) throws Exception {
        return "deposit";
    }

    @ResponseBody
    @RequestMapping("/getDeposit")
    public List<DepositKeywordDto> getDeposit(DepositKeywordDto depositKeywordDto, Model model) throws Exception{
        String key = "afacb093b54042de08854e5b660d73b6";
        List<DepositKeywordDto> depositKeywordList = DataKeywordUtil.getDeposit(key);
        System.out.println(depositKeywordList);
        return depositKeywordList;
    }
}