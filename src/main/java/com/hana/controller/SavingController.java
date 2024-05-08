package com.hana.controller;

import com.hana.app.data.SavingDto;
import com.hana.app.data.SavingOptionDto;
import com.hana.app.service.SavingOptionService;
import com.hana.app.service.SavingService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    final SavingOptionService savingOptionService;

    @RequestMapping("/benefit")
    @ResponseBody
    public List<SavingDto> benefit(@RequestParam(value = "termclassList", required = false) int[] termclassList, @RequestParam(value = "bankList", required = false) int[] bankList) {
        List<SavingDto> dtolist = null;
        try {
            dtolist = savingService.getSavingList(termclassList,bankList);

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

    @RequestMapping("/detail")
    public String detail(@RequestParam("fpc") String fpc, Model model) {
        List<SavingOptionDto> options = null;
        SavingDto dto = null;
        try {
            dto = savingService.get(fpc);
            model.addAttribute("depositDetail", dto);

            options = savingOptionService.getIntr(fpc);
            model.addAttribute("options", options);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return "detail";
    }

    @ResponseBody
    @RequestMapping("/recommend")
    public List<SavingDto> recommend(@RequestParam("arr") String[] arr) throws ParseException {

        List<SavingDto> recSaving = null;
        try {
            recSaving = savingService.recSavingList(arr);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return recSaving;
    }
}