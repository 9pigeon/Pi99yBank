package com.hana.app.service;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.data.DepositKeywordPKDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.DepositKeywordRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class DepositKeywordService implements HanaService<DepositKeywordPKDto, DepositKeywordDto> {

    final DepositKeywordRepository depositKeywordRepository;


    @Override
    public int add(DepositKeywordDto depositKeywordDto) throws Exception {
        return depositKeywordRepository.insert(depositKeywordDto);
    }

    @Override
    public int del(DepositKeywordPKDto depositKeywordPKDto) throws Exception {
        return depositKeywordRepository.delete(depositKeywordPKDto);
    }

    @Override
    public int modify(DepositKeywordDto depositKeywordDto) throws Exception {
        return depositKeywordRepository.update(depositKeywordDto);
    }

    @Override
    public DepositKeywordDto get(DepositKeywordPKDto depositKeywordPKDto) throws Exception {
        return depositKeywordRepository.selectOne(depositKeywordPKDto);
    }

    @Override
    public List<DepositKeywordDto> get() throws Exception {
        return depositKeywordRepository.select();
    }

    @Override
    public int reset() throws Exception {
        return depositKeywordRepository.reset();
    }

}
