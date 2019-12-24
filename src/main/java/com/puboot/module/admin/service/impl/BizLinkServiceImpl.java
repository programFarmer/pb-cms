package com.puboot.module.admin.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.puboot.common.util.Pagination;
import com.puboot.module.admin.mapper.BizLinkMapper;
import com.puboot.module.admin.model.BizLink;
import com.puboot.module.admin.service.BizLinkService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Service
@AllArgsConstructor
public class BizLinkServiceImpl extends ServiceImpl<BizLinkMapper, BizLink> implements BizLinkService {

    private final BizLinkMapper linkMapper;

    @Override
    public List<BizLink> selectLinks(BizLink bizLink) {
        return linkMapper.selectLinks(null, bizLink);
    }

    @Override
    public IPage<BizLink> pageLinks(BizLink bizLink, Integer pageNumber, Integer pageSize) {
        IPage<BizLink> page = new Pagination<>(pageNumber, pageSize);
        page.setRecords(linkMapper.selectLinks(page, bizLink));
        return page;
    }

    @Override
    public int deleteBatch(Integer[] ids) {
        return linkMapper.deleteBatch(ids);
    }

}
