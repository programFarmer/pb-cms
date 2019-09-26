package com.puboot.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.puboot.model.BizLink;

import java.util.List;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
public interface BizLinkService extends IService<BizLink> {

    List<BizLink> selectLinks(BizLink bizLink);

    IPage<BizLink> pageLinks(BizLink bizLink, Integer limit, Integer offset);

    int deleteBatch(Integer[] ids);

}
