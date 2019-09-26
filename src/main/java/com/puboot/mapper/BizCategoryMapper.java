package com.puboot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.puboot.model.BizCategory;

import java.util.List;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
public interface BizCategoryMapper extends BaseMapper<BizCategory> {

    List<BizCategory> selectCategories(BizCategory bizCategory);

    int deleteBatch(Integer[] ids);

    BizCategory getById(Integer id);
}
