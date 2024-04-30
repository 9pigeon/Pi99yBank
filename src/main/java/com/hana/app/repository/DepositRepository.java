package com.hana.app.repository;

import com.hana.app.data.DepositDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface DepositRepository extends HanaRepository<String, DepositDto> {
}
