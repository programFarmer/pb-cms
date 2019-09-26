package com.puboot.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.puboot.common.util.CoreConst;
import com.puboot.model.BizCategory;
import com.puboot.service.BizCategoryService;
import com.puboot.service.SysConfigService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

/**
 * 后台管理页面跳转控制器
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Controller
@AllArgsConstructor
public class AdminRenderController {

    private final BizCategoryService categoryService;
    private final SysConfigService sysConfigService;


    /*工作台*/
    @GetMapping("/workdest")
    public String workdest() {
        return "index/workdest";
    }

    /**
     * 用户列表入口
     */
    @GetMapping("/users")
    public String userList() {
        return "user/list";
    }

    /**
     * 角色列表入口
     */
    @GetMapping("/roles")
    public String roleList() {
        return "role/list";
    }

    /**
     * 权限列表入口
     */
    @GetMapping("/permissions")
    public String permissionList() {
        return "permission/list";
    }

    /*在线用户入口*/
    @GetMapping("/online/users")
    public String onlineUsers() {
        return "onlineUsers/list";
    }

    /**
     * 网站基本信息
     *
     * @param model
     */
    @GetMapping("/siteinfo")
    public String siteinfo(Model model) {
        Map<String, String> map = sysConfigService.selectAll();
        model.addAttribute("siteinfo", map);
        return "site/siteinfo";
    }

    /**
     * 友情链接
     */
    @GetMapping("/links")
    public String links() {
        return "link/list";
    }

    /**
     * 分类
     */
    @GetMapping("/categories")
    public String categories() {
        return "category/list";
    }

    /**
     * 标签
     */
    @GetMapping("/tags")
    public String tags() {
        return "tag/list";
    }

    /**
     * 文章
     *
     * @param model
     */
    @GetMapping("/articles")
    public String articles(Model model) {
        List<BizCategory> categories = categoryService.list(Wrappers.<BizCategory>lambdaQuery().eq(BizCategory::getStatus, CoreConst.STATUS_VALID));
        model.addAttribute("categories", categories);
        return "article/list";
    }

    /**
     * 评论
     */
    @GetMapping("/comments")
    public String comments() {
        return "comment/list";
    }

    /**
     * 主题
     */
    @GetMapping("themes")
    public String themes() {
        return "systheme/list";
    }

}
