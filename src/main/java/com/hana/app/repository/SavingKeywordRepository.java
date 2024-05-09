package com.hana.app.repository;

import com.hana.app.data.SavingKeywordDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface SavingKeywordRepository extends HanaRepository<String, SavingKeywordDto> {
    List<SavingKeywordDto> selectSavingKeywordList(String finPrdtCd);
}
