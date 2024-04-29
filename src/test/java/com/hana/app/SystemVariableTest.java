package com.hana.app;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class SystemVariableTest {
        @Test
        public void contextLoads() {
            if(System.getenv("JASYPT_PASSWORD")==null){
                log.info("JASYPT_PASSWORD is null");
                throw new RuntimeException("JASYPT_PASSWORD is null");
            }
        }
}
