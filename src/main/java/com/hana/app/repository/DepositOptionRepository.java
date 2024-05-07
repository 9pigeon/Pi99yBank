package com.hana.app.repository;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.data.DepositOptionDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface DepositOptionRepository extends HanaRepository<String, DepositOptionDto> {
    List<DepositOptionDto> getIntr(String fpc);
}
