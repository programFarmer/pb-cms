package com.puboot.component;

import org.springframework.boot.web.servlet.error.DefaultErrorAttributes;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.WebRequest;

import java.util.Map;

/**
 * 自定义错误信息
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Component
public class MyErrorAttributes extends DefaultErrorAttributes {

    @Override
    public Map<String, Object> getErrorAttributes(WebRequest webRequest, boolean includeStackTrace) {
        Map<String, Object> map = super.getErrorAttributes(webRequest, includeStackTrace);
        Object attribute = webRequest.getAttribute("ext", 0);
        if (attribute instanceof Map) {
            Map<String, Object> ext = (Map<String, Object>) attribute;
            map.put("ext", ext);
        }
        return map;
    }
}
