package com.hana.controller;

import com.hana.app.data.DepositDto;
import com.hana.app.data.SavingDto;
import com.hana.app.service.SavingService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/saving")
@Slf4j
@RequiredArgsConstructor
public class SavingController {
    final SavingService savingService;

    @RequestMapping("/benefit")
    @ResponseBody
    public List<SavingDto> benefit(@RequestParam("termclassList") int[] termclassList){
        List<SavingDto> dtolist = null;
        try {
            dtolist = savingService.getSavingList(termclassList);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return dtolist;
    }

    @ResponseBody
    @RequestMapping("/all")
    public List<SavingDto> all() {
        List<SavingDto> all = null;
        try {
            all = savingService.get();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return all;
    }
}