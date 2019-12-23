package com.puboot.module.admin.service.impl;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.puboot.common.annotation.Cache;
import com.puboot.common.util.CoreConst;
import com.puboot.module.admin.mapper.BizThemeMapper;
import com.puboot.module.admin.model.BizTheme;
import com.puboot.module.admin.service.BizThemeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Service
@AllArgsConstructor
public class BizThemeServiceImpl extends ServiceImpl<BizThemeMapper, BizTheme> implements BizThemeService {

    private final BizThemeMapper themeMapper;

    @Override
    @Cache(flush = true)
    public int useTheme(Integer id) {
        themeMapper.setInvaid();
        return themeMapper.updateStatusById(id);
    }

    @Override
    @Cache
    public BizTheme selectCurrent() {
        return themeMapper.selectOne(Wrappers.<BizTheme>lambdaQuery().eq(BizTheme::getStatus, CoreConst.STATUS_VALID));
    }

    @Override
    public int deleteBatch(Integer[] ids) {
        return themeMapper.deleteBatch(ids);
    }
}
