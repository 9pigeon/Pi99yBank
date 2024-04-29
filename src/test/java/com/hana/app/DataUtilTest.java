package com.hana.app;

import com.hana.util.DataUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.parser.ParseException;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

@SpringBootTest
@Slf4j
public class DataUtilTest {
    @Autowired
    DataUtil dataUtil;
    @Test

    void contextLoads() throws IOException, ParseException {
        log.info(dataUtil.getSavings().toString());
        log.info(dataUtil.getDeposits().toString());
    }
}
