package com.puboot.module.admin.vo;

import com.puboot.module.admin.vo.base.BaseConditionVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class ArticleConditionVo extends BaseConditionVo {
    private Integer categoryId;
    private Integer tagId;
    private Integer status;
    private Boolean top;
    private Boolean recommended;
    private Boolean slider;
    private Boolean original;
    private Boolean random;
    private Boolean recentFlag;
    private Boolean sliderFlag;
    private List<Long> tagIds;
    private String keywords;

}

