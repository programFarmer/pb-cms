package com.puboot.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.puboot.mapper.BizArticleLookMapper;
import com.puboot.model.BizArticleLook;
import com.puboot.service.BizArticleLookService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Service
@AllArgsConstructor
public class BizArticleLookServiceImpl extends ServiceImpl<BizArticleLookMapper, BizArticleLook> implements BizArticleLookService {

    private final BizArticleLookMapper articleLookMapper;

    @Override
    public int checkArticleLook(Integer articleId, String userIp, Date lookTime) {
        return articleLookMapper.checkArticleLook(articleId, userIp, lookTime);
    }
}
