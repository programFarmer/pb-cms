package com.puboot.component;

import com.puboot.common.util.CoreConst;
import com.puboot.module.admin.model.BizCategory;
import com.puboot.module.admin.model.BizLink;
import com.puboot.module.admin.model.BizTags;
import com.puboot.module.admin.service.*;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

/**
 * thymeleaf调用后台的工具类
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Component("module")
@AllArgsConstructor
public class ModuleService {

    private final BizCategoryService bizCategoryService;
    private final BizArticleService bizArticleService;
    private final BizTagsService bizTagsService;
    private final BizLinkService bizLinkService;
    private final BizSiteInfoService siteInfoService;
    private final SysConfigService sysConfigService;

    public Object get(String moduleName) {
        switch (moduleName) {
            //分类
            case "categoryList":
                BizCategory bizCategory = new BizCategory();
                bizCategory.setStatus(CoreConst.STATUS_VALID);
                return bizCategoryService.selectCategories(bizCategory);
            //标签
            case "tagList":
                return bizTagsService.selectTags(new BizTags());
            //轮播文章
            case "sliderList":
                return bizArticleService.sliderList();
            //最近文章
            case "recentList":
                return bizArticleService.recentList(CoreConst.PAGE_SIZE);
            //推荐文章
            case "recommendedList":
                return bizArticleService.recommendedList(CoreConst.PAGE_SIZE);
            //热门文章
            case "hotList":
                return bizArticleService.hotList(CoreConst.PAGE_SIZE);
            //随机文章
            case "randomList":
                return bizArticleService.randomList(CoreConst.PAGE_SIZE);
            //友链
            case "linkList":
                BizLink bizLink = new BizLink();
                bizLink.setStatus(CoreConst.STATUS_VALID);
                return bizLinkService.selectLinks(bizLink);
            //网站信息统计
            case "siteInfo":
                return siteInfoService.getSiteInfo();
            //网站基本信息配置
            case "sysConfig":
                return sysConfigService.selectAll();
            default:
                return null;
        }
    }
}
