package com.puboot.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.puboot.common.util.Pagination;
import com.puboot.mapper.BizCommentMapper;
import com.puboot.model.BizComment;
import com.puboot.service.BizCommentService;
import com.puboot.vo.CommentConditionVo;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Service
@AllArgsConstructor
public class BizCommentServiceImpl extends ServiceImpl<BizCommentMapper, BizComment> implements BizCommentService {

    private final BizCommentMapper commentMapper;

    @Override
    public IPage<BizComment> selectComments(CommentConditionVo vo) {
        IPage<BizComment> page = new Pagination<>(vo.getPageNumber(), vo.getPageSize());
        page.setRecords(commentMapper.selectComments(page, vo));
        return page;
    }

    @Override
    public int deleteBatch(Integer[] ids) {
        return commentMapper.deleteBatch(ids);
    }
}
