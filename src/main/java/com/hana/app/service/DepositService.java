package com.hana.app.service;

import com.hana.app.data.DepositDto;
import com.hana.app.frame.HanaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DepositService implements HanaService<Integer, DepositDto> {
    @Override
    public int add(DepositDto depositDto) throws Exception {
        return 0;
    }

    @Override
    public int del(Integer integer) throws Exception {
        return 0;
    }

    @Override
    public int modify(DepositDto depositDto) throws Exception {
        return 0;
    }

    @Override
    public DepositDto get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<DepositDto> get() throws Exception {
        return null;
    }
}
