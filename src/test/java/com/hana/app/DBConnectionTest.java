package com.hana.app;

import com.hana.app.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@SpringBootTest
@Slf4j
public class DBConnectionTest {

    @Autowired
    DataSource dataSource;

    @Test
    void contextLoads() throws Exception {
        Connection connection = dataSource.getConnection();
        connection.close();
        log.info("Connection Test Success");
    }
}
