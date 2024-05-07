package com.hana.app.service;

import com.hana.app.data.DepositOptionDto;
import com.hana.app.data.SavingOptionDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.SavingOptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SavingOptionService implements HanaService<String, SavingOptionDto> {
    final SavingOptionRepository savingOptionRepository;

    @Override
    public int add(SavingOptionDto savingOptionDto) throws Exception {
        return savingOptionRepository.insert(savingOptionDto);
    }

    @Override
    public int del(String s) throws Exception {
        return 0;
    }

    @Override
    public int modify(SavingOptionDto savingOptionDto) throws Exception {
        return 0;
    }

    @Override
    public SavingOptionDto get(String s) throws Exception {
        return null;
    }

    @Override
    public List<SavingOptionDto> get() throws Exception {
        return null;
    }

    @Override
    public int reset() throws Exception {
        return savingOptionRepository.reset();
    }

    public List<SavingOptionDto> getIntr(String fpc) throws Exception {
        return savingOptionRepository.getIntr(fpc);
    }
}