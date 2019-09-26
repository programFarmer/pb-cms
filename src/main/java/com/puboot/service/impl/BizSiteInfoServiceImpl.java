package com.puboot.service.impl;

import com.puboot.mapper.BizArticleMapper;
import com.puboot.service.BizSiteInfoService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Service
@AllArgsConstructor
public class BizSiteInfoServiceImpl implements BizSiteInfoService {

    private final BizArticleMapper bizArticleMapper;

    @Override
    public Map<String, Object> getSiteInfo() {
        return bizArticleMapper.getSiteInfo();
    }

}
