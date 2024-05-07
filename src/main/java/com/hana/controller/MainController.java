package com.hana.controller;

import com.hana.app.data.DepositDto;
import com.hana.app.data.SavingDto;
import com.hana.app.service.DepositService;
import com.hana.app.service.KakaoService;
import com.hana.app.service.SavingService;
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
    final SavingService savingService;

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
        List<DepositDto> all = null;
        all = depositService.get();
        log.info("all: " + all.toString());
        model.addAttribute("all", all);
        return "main";
    }
    @RequestMapping("/saving")
    public String saving(Model model) throws Exception {
        List<SavingDto> all = null;
        all = savingService.get();
        log.info("savingList: " + all.toString());
        model.addAttribute("all", all);
//        model.addAttribute("mainCenter", "saving");
        return "main";
    }
}