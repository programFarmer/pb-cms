package com.puboot.common.util;

import lombok.experimental.UtilityClass;

/**
 * 常量工具类
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@UtilityClass
public class CoreConst {

    public static final Integer SUCCESS_CODE = 200;
    public static final Integer FAIL_CODE = 500;
    public static final Integer STATUS_VALID = 1;
    public static final Integer STATUS_INVALID = 0;
    public static final Integer PAGE_SIZE = 10;
    public static final Integer TOP_MENU_ID = 0;
    public static final String TOP_MENU_NAME = "顶层菜单";
    public static final String SHIRO_REDIS_SESSION_PREFIX = "pb_cms:session:";
    public static final String SHIRO_REDIS_CACHE_NAME = "shiro_pb_cms";

    public static final String ADMIN_PREFIX = "admin/";

}
