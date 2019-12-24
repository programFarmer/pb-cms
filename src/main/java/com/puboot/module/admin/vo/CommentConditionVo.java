package com.puboot.module.admin.vo;

import com.puboot.module.admin.vo.base.BaseConditionVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Data
public class CommentConditionVo {
    private String userId;
    private Integer sid;
    private Integer pid;
    private String qq;
    private String email;
    private String url;
    private Integer status;

}

