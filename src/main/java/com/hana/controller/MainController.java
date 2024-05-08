package com.hana.controller;


import com.hana.app.service.KakaoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@Slf4j
@RequiredArgsConstructor
public class MainController {
    private final KakaoService kakaoService;


    @RequestMapping("/")
    public String home(Model model) {
        model.addAttribute("center", "indexCenter");
        model.addAttribute("kakaoUrl",kakaoService.getKakaoLogin());
        return "index";
    }
    @RequestMapping("/main")
    public String main(Model model) {
        model.addAttribute("center", "main");
        return "index";
    }
}