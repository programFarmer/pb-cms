package com.puboot.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.puboot.model.BizTheme;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
public interface BizThemeService extends IService<BizTheme> {

    int useTheme(Integer id);

    BizTheme selectCurrent();

    int deleteBatch(Integer[] ids);

}
