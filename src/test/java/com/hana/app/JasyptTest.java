package com.hana.app;

import com.hana.app.config.JasyptConfig;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class JasyptTest {

    @Test
    void contextLoads() {
        log.info(jasyptEncoding("hana"));
        log.info(jasyptDecoding("le08h7RAhKKeUgOjZU1aTJxQHtgBlqfIOLgwWwGcpnbLIsSvopOpkh/Q/hpMoPurEAm90LJG3FlTtbIrQOvbu8hlwhmQfMKB28AdgFMDkYANw4+dlDDXOw=="));
    }

    public String jasyptEncoding(String value){
        JasyptConfig jasyptConfig = new JasyptConfig();
        return jasyptConfig.stringEncryptor().encrypt(value);
    }

    public String jasyptDecoding(String value){
        JasyptConfig jasyptConfig = new JasyptConfig();
        return jasyptConfig.stringEncryptor().decrypt(value);
    }

}

