package com.hana.app.SQL;

import com.hana.app.data.dto.UserDto;
import com.hana.app.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class UserSQLTest {

    @Autowired
    UserService userService;

    @Test
    void contextLoads() throws Exception {
        UserDto userDto = UserDto.builder().userId("test").kakaoId("test@kakao.com").userPw("password**").build();
        userService.add(userDto);
        log.info(userService.get().toString());
    }
}
