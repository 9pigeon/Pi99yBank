package com.hana.app.repository;

import com.hana.app.data.dto.UserDto;
import com.hana.app.frame.HanaRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
<<<<<<< HEAD
public interface UserRepository extends HanaRepository<Long, UserDto> {

=======
public interface UserRepository extends HanaRepository<String, UserDto>{
>>>>>>> 9ca221528d3f6096a38134311d49e5def61aecff
}
