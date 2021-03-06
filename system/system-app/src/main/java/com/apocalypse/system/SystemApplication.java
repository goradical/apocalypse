package com.apocalypse.system;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * @author 景凯辉
 * @date 2018/11/9
 * @mail kaihuijing@gmail.com
 */
@EnableCaching
@MapperScan(basePackages = "com.apocalypse.system.mapper")
@SpringBootApplication(scanBasePackages = {
        "com.apocalypse.system", "com.apocalypse.common.config",
        "com.apocalypse.common.util", "com.apocalypse.common.exception",
        "com.apocalypse.common.advice", "com.apocalypse.common.aspect",
        "com.apocalypse.common.interceptor",
        })
@EnableDiscoveryClient
@EnableFeignClients(basePackages = {"com.apocalypse"})
public class SystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(SystemApplication.class, args);
    }


}
