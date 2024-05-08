package com.hana.app.repository;

import com.hana.app.data.DepositDto;
import com.hana.app.data.SavingDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface SavingRepository extends HanaRepository<String, SavingDto> {
    List<SavingDto> getSavingList(int[] termclassList, int[] bankList);
    List<SavingDto> recSavingList(String[] similarList);
}

