package com.puboot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.puboot.model.BizLove;
import org.apache.ibatis.annotations.Param;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
public interface BizLoveMapper extends BaseMapper<BizLove> {

    BizLove checkLove(@Param("bizId") Integer bizId, @Param("userIp") String userIp);
}
