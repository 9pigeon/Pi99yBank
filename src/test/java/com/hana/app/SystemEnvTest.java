package com.hana.app;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class SystemEnvTest {

    @Test
    void contextLoads() {
        log.info(System.getenv("JASYPT_PASSWORD"));
    }
}
