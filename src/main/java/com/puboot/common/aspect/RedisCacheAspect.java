package com.puboot.common.aspect;

import com.puboot.common.annotation.Cache;
import com.puboot.common.util.AspectUtil;
import com.puboot.module.admin.service.RedisService;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * Redis缓存自定义注解对应的切面
 *
 * @author LinZhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Slf4j
@Aspect
@Component
public class RedisCacheAspect {

    private static final String CACHE_PREFIX = "pb_cms_";

    @Autowired
    private RedisService redisService;

    @Pointcut("@annotation(com.puboot.common.annotation.Cache)")
    public void pointcut() {
    }

    @Around("pointcut()")
    public Object handle(ProceedingJoinPoint point) throws Throwable {
        Method currentMethod = AspectUtil.getMethod(point);
        //获取类方法上的@RedisCache注解
        Cache cache = currentMethod.getAnnotation(Cache.class);
        if (cache.flush()) {
            String classPrefix = AspectUtil.getKeyOfClassPrefix(point, CACHE_PREFIX);
            if (log.isDebugEnabled()) {
                log.debug("清空缓存 - {}*", classPrefix);
            }
            redisService.delBatch(classPrefix);
            return point.proceed();
        }
        String key = AspectUtil.getKey(point, cache.key(), CACHE_PREFIX);
        try {
            if (redisService.hasKey(key)) {
                if (log.isDebugEnabled()) {
                    log.debug("{}从缓存中获取数据", key);
                }
                return redisService.get(key);
            }
        } catch (Exception e) {
            log.error("从缓存中获取数据失败!", e);
        }
        //先执行业务
        Object result = point.proceed();
        try {
            redisService.set(key, result, cache.expire(), cache.unit());
        } catch (Exception e) {
            log.error("向缓存设置数据失败!", e);
        }
        if (log.isDebugEnabled()) {
            log.debug("{}从数据库中获取数据", key);
        }
        return result;
    }
}
