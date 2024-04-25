package com.hana.app.service;

import com.hana.app.data.dto.UserDto;
import com.hana.app.frame.HanaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

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
    }

    @Override
    public int modify(UserDto userDto) throws Exception {
        return 0;
    }

    @Override
    public UserDto get(String s) throws Exception {
        return null;
    }

    @Override
    public List<UserDto> get() throws Exception {
        return null;
    }
}
