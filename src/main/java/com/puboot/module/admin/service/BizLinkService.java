package com.puboot.module.admin.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.puboot.module.admin.model.BizLink;

import java.util.List;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
public interface BizLinkService extends IService<BizLink> {

    List<BizLink> selectLinks(BizLink bizLink);

    IPage<BizLink> pageLinks(BizLink bizLink, Integer pageNumber, Integer pageSize);

    int deleteBatch(Integer[] ids);

}
