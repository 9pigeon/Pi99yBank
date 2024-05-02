package com.hana.app.repository;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.data.SavingKeywordDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface SavingKeywordRepository extends HanaRepository<String, SavingKeywordDto> {
}
