package com.hana.app.service;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.data.DepositOptionDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.DepositKeywordRepository;
import com.hana.app.repository.DepositOptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DepositOptionService implements HanaService<String, DepositOptionDto> {
    final DepositOptionRepository depositOptionRepository;

    @Override
    public int add(DepositOptionDto depositOptionDto) throws Exception {
        return depositOptionRepository.insert(depositOptionDto);
    }

    @Override
    public int del(String s) throws Exception {
        return 0;
    }

    @Override
    public int modify(DepositOptionDto depositOptionDto) throws Exception {
        return 0;
    }

    @Override
    public DepositOptionDto get(String s) throws Exception {
        return null;
    }

    @Override
    public List<DepositOptionDto> get() throws Exception {
        return null;
    }

    @Override
    public int reset() throws Exception {
        return depositOptionRepository.reset();
    }
}