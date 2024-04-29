package com.hana.app.controller;

import com.hana.app.data.DepositKeywordDto;
import com.hana.util.DataKeywordUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class MainController {
    @RequestMapping("/")
    public String index() throws Exception{
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
