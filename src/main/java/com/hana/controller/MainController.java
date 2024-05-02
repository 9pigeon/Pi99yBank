package com.hana.controller;

import com.hana.app.data.DepositDto;
import com.hana.app.service.DepositService;
import com.hana.app.service.KakaoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class MainController {
    private final KakaoService kakaoService;
    final DepositService depositService;


    @RequestMapping("/")
    public String home(Model model) {
        String url = kakaoService.getKakaoLogin();
        log.info(url);
        model.addAttribute("kakaoUrl", url);
        return "index";
    }

    @RequestMapping("/main")
    public String main(Model model) throws Exception {
        List<DepositDto> all = null;
        all = depositService.get();
        model.addAttribute("all", all);
        return "main";
    }


}