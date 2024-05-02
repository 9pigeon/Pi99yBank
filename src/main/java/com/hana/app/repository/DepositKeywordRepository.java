package com.hana.app.repository;

import com.hana.app.data.DepositKeywordDto;
import com.hana.app.data.DepositKeywordPKDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface DepositKeywordRepository extends HanaRepository<DepositKeywordPKDto, DepositKeywordDto> {
}
