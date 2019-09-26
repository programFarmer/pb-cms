package com.puboot.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.puboot.model.BizTags;

import java.util.List;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
public interface BizTagsService extends IService<BizTags> {

    List<BizTags> selectTags(BizTags bizTags);

    IPage<BizTags> pageTags(BizTags bizTags, Integer limit, Integer offset);

    int deleteBatch(Integer[] ids);
}
