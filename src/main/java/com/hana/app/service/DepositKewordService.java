package com.hana.app.service;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.DepositKeywordRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DepositKewordService implements HanaService<String, DepositKeywordDto> {
    final DepositKeywordRepository depositKeywordRepository;

    @Override
    public int add(DepositKeywordDto depositKeywordDto) throws Exception {
        return depositKeywordRepository.insert(depositKeywordDto);
    }

    @Override
    public int del(String s) throws Exception {
        return 0;
    }

    @Override
    public int modify(DepositKeywordDto depositKeywordDto) throws Exception {
        return 0;
    }

    @Override
    public DepositKeywordDto get(String s) throws Exception {
        return null;
    }

    @Override
    public List<DepositKeywordDto> get() throws Exception {
        return null;
    }

    @Override
    public int reset() throws Exception {
        return depositKeywordRepository.reset();
    }
}
