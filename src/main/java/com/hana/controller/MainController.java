package com.hana.controller;

import com.hana.app.data.DepositDto;
import com.hana.app.service.DepositService;
import com.hana.app.service.KakaoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class MainController {
    private final KakaoService kakaoService;

    @Autowired
    DepositService depositService;
    @RequestMapping("/")
    public String home(Model model) {
        model.addAttribute("center", "indexCenter");
        model.addAttribute("kakaoUrl",kakaoService.getKakaoLogin());
        return "index";
    }
    @RequestMapping("/main")
    public String main(Model model) throws Exception {
        return "main";
    }

}