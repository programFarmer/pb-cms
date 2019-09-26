package com.puboot.common.util;

import lombok.experimental.UtilityClass;

/**
 * 分页工具类
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@UtilityClass
public class PageUtil {
    public static Integer getPageNo(Integer limit, Integer offset) {
        return offset == 0 ? 1 : offset / limit + 1;
    }
}
