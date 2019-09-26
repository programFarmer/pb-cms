package com.puboot.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.puboot.model.BizComment;
import com.puboot.vo.CommentConditionVo;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
public interface BizCommentService extends IService<BizComment> {

    IPage<BizComment> selectComments(CommentConditionVo vo);

    int deleteBatch(Integer[] ids);

}
