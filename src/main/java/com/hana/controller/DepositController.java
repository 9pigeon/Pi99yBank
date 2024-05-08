package com.hana.controller;

import com.hana.app.data.DepositDto;
import com.hana.app.data.DepositOptionDto;
import com.hana.app.service.DepositOptionService;
import com.hana.app.service.DepositService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.parser.JSONParser;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
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
    final DepositOptionService depositOptionService;

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
    @RequestMapping("/detail")
    public String detail(@RequestParam("fpc") String fpc, Model model) {
        List<DepositOptionDto> options = null;
        DepositDto dto = null;
        try {
            dto = depositService.get(fpc);
            model.addAttribute("depositDetail", dto);

            options = depositOptionService.getIntr(fpc);
            model.addAttribute("options", options);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return "detail";
    }

    @ResponseBody
    @RequestMapping("/recommend")
    public List<DepositDto> recommend(@RequestParam("arr") String[] arr) throws ParseException {
        //JSONObject recJson = (JSONObject) new JSONParser().parse(rec.toString());
        //String[] similar = (String[]) recJson.get("similar_products");

        log.info("-----------------------------------------");
        for (int i = 0; i < arr.length; i++) {
            log.info("arr[" + i + "]:" + arr[i]);
        }
        List<DepositDto> recDeposit = null;
        try {
            recDeposit = depositService.recDepositList(arr);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return recDeposit;
    }
}
