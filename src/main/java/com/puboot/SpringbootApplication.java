package com.puboot;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * @author LinZhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Slf4j
@SpringBootApplication
public class SpringbootApplication {

    public static void main(String[] args) throws UnknownHostException {
        ConfigurableApplicationContext application = SpringApplication.run(SpringbootApplication.class, args);

        Environment env = application.getEnvironment();
        String ip = InetAddress.getLocalHost().getHostAddress();
        String port = env.getProperty("server.port");
        String contextPath = env.getProperty("server.servlet.context-path");
        if (contextPath == null) {
            contextPath = "";
        }
        log.info("\n----------------------------------------------------------\n\t" +
                "Application is running! Access URLs:\n\t" +
                "Local: \t\thttp://localhost:" + port + contextPath + "/\n\t" +
                "External: \thttp://" + ip + ':' + port + contextPath + "/\n" +
                "----------------------------------------------------------");
    }
}
