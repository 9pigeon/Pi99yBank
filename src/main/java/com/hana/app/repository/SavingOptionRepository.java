package com.hana.app.repository;

import com.hana.app.data.DepositOptionDto;
import com.hana.app.data.SavingOptionDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface SavingOptionRepository extends HanaRepository<String, SavingOptionDto> {
    List<SavingOptionDto> getIntr(String fpc);
}
