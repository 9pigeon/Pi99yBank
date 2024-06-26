package com.hana.app.service;
import com.hana.app.data.DepositDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.SavingRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.hana.app.data.SavingDto;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SavingService implements HanaService<String, SavingDto>{

    final SavingRepository savingRepository;
    @Override
    public int add(SavingDto savingDto) throws Exception {
        return savingRepository.insert(savingDto);
    }

    @Override
    public int del(String id) throws Exception {
        return savingRepository.delete(id);
    }

    @Override
    public int modify(SavingDto savingDto) throws Exception {
        return savingRepository.update(savingDto);
    }

    @Override
    public SavingDto get(String id) throws Exception {
        return savingRepository.selectOne(id);
    }

    public List<SavingDto> getSavingList(int[] termclassList, int[] bankList) throws Exception {
        return savingRepository.getSavingList(termclassList,bankList);
    }

    @Override
    public List<SavingDto> get() throws Exception {
        return savingRepository.select();
    }

    public List<SavingDto> recSavingList(String[] similarList) throws Exception {
        return savingRepository.recSavingList(similarList);
    }
    @Override
    public int reset() throws Exception {
        return savingRepository.reset();
    }


}
