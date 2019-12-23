package com.puboot.common.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * spring事务、MybatisPlus分页插件、mybatis包扫描等配置
 *
 * @author LinZhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@EnableTransactionManagement
@Configuration
@MapperScan(basePackages = "com.puboot.module.admin.mapper")
public class MybatisPlusConfig {

    /**
     * 分页插件
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        // paginationInterceptor.setLimit(你的最大单页限制数量，默认 500 条，小于 0 如 -1 不受限制);
        return new PaginationInterceptor();
    }
}