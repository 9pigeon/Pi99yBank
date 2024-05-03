package com.hana.controller;

import com.hana.app.data.DepositDto;
import com.hana.app.service.DepositService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/deposit")
@Slf4j
@RequiredArgsConstructor
public class DepositController {
    final DepositService depositService;

    @RequestMapping("/benefit")
    @ResponseBody
    public List<DepositDto> benefit(@RequestParam("termclassList") int[] termclassList){
        log.info("benefit---------------------------------------------");
        log.info("termclassList:{}", termclassList);

        List<DepositDto> dtolist = null;
        try {
            dtolist = depositService.getDepositList(termclassList);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return dtolist;
    }

    @ResponseBody
    @RequestMapping("/all")
    public List<DepositDto> all() {
        List<DepositDto> all = null;
        try {
            all = depositService.get();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return all;
    }
}