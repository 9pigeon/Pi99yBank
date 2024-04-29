package com.hana.app.service;

import com.hana.app.data.dto.UserDto;
import com.hana.app.frame.HanaService;
import com.hana.app.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class UserService implements HanaService<Long, UserDto> {
    final UserRepository userRepository;


    @Override
    public int add(UserDto userDto) throws Exception {
        return userRepository.insert(userDto);
    }

    @Override
    public int del(Long aLong) throws Exception {
        return userRepository.delete(aLong);
    }

    @Override
    public int modify(UserDto userDto) throws Exception {
        return userRepository.update(userDto);
    }

    @Override
    public UserDto get(Long aLong) throws Exception {
        return userRepository.selectOne(aLong);
    }

    @Override
    public List<UserDto> get() throws Exception {
        return userRepository.select();
    }
}
