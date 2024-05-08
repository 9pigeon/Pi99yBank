package com.hana.app.service;

import com.hana.app.data.DepositDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.DepositRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class DepositService implements HanaService<String, DepositDto> {

    final DepositRepository depositRepository;
    @Override
    public int add(DepositDto depositDto) throws Exception {
        log.info(depositDto.toString());
        return depositRepository.insert(depositDto);
    }

    @Override
    public int del(String id) throws Exception {
        return depositRepository.delete(id);
    }

    @Override
    public int modify(DepositDto depositDto) throws Exception {
        return depositRepository.update(depositDto);
    }

    @Override
    public DepositDto get(String id) throws Exception {
        return depositRepository.selectOne(id);
    }

    @Override
    public List<DepositDto> get() throws Exception {
        return depositRepository.select();
    }

    public List<DepositDto> getDepositList(int[] termclassList, int[] bankList) throws Exception {
        return depositRepository.getDepositList(termclassList, bankList);
    }

    public List<DepositDto> recDepositList(String[] similarList) throws Exception {
        return depositRepository.recDepositList(similarList);
    }

    @Override
    public int reset() throws Exception {
        return depositRepository.reset();
    }
}
