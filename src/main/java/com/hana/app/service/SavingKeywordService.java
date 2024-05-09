package com.hana.app.service;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.data.SavingKeywordDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.SavingKeywordRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SavingKeywordService implements HanaService<String, SavingKeywordDto>{

    final SavingKeywordRepository savingKeywordRepository;
    @Override
    public int add(SavingKeywordDto savingKeywordDto) throws Exception {
        return savingKeywordRepository.insert(savingKeywordDto);
    }

    @Override
    public int del(String s) throws Exception {
        return 0;
    }

    @Override
    public int modify(SavingKeywordDto savingKeywordDto) throws Exception {
        return 0;
    }

    @Override
    public SavingKeywordDto get(String s) throws Exception {
        return null;
    }

    @Override
    public List<SavingKeywordDto> get() throws Exception {
        return null;
    }

    @Override
    public int reset() throws Exception {
        return savingKeywordRepository.reset();
    }

    public List<SavingKeywordDto> getSavingKeywordByCd(String finPrdtCd) throws Exception {
        return savingKeywordRepository.selectSavingKeywordList(finPrdtCd);
    }

}
