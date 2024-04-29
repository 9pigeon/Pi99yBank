package com.hana.app.service;

import com.hana.app.data.dto.UserDto;
import com.hana.app.frame.HanaService;
<<<<<<< HEAD
import com.hana.app.repository.UserRepository;
=======
>>>>>>> 9ca221528d3f6096a38134311d49e5def61aecff
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
<<<<<<< HEAD
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
=======

@Service
@RequiredArgsConstructor
public class UserService implements HanaService<String, UserDto> {

    @Override
    public int add(UserDto userDto) throws Exception {
        return 0;
    }

    @Override
    public int del(String s) throws Exception {
        return 0;
>>>>>>> 9ca221528d3f6096a38134311d49e5def61aecff
    }

    @Override
    public int modify(UserDto userDto) throws Exception {
<<<<<<< HEAD
        return userRepository.update(userDto);
    }

    @Override
    public UserDto get(Long aLong) throws Exception {
        return userRepository.selectOne(aLong);
=======
        return 0;
    }

    @Override
    public UserDto get(String s) throws Exception {
        return null;
>>>>>>> 9ca221528d3f6096a38134311d49e5def61aecff
    }

    @Override
    public List<UserDto> get() throws Exception {
<<<<<<< HEAD
        return userRepository.select();
=======
        return null;
>>>>>>> 9ca221528d3f6096a38134311d49e5def61aecff
    }
}
