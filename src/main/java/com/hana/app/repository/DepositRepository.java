package com.hana.app.repository;

import com.hana.app.data.DepositDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface DepositRepository extends HanaRepository<String, DepositDto> {
    List<DepositDto> getDepositList(int[] termclassList, int[] bankList);
    List<DepositDto> recDepositList(String[] similarList);

}
