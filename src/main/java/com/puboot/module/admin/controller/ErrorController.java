package com.puboot.module.admin.controller;

import com.puboot.common.util.CoreConst;
import com.puboot.module.admin.model.BizCategory;
import com.puboot.module.admin.service.BizCategoryService;
import com.puboot.module.admin.service.SysConfigService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * 统一错误跳转页面，如403，404，500
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Controller
@RequestMapping("/error")
@AllArgsConstructor
public class ErrorController {

    private final SysConfigService sysConfigService;
    private final BizCategoryService bizCategoryService;

    /**
     * shiro无权限时进入
     *
     * @param request
     * @param response
     * @param model
     * @return
     */
    @RequestMapping("/403")
    public String noPermission(HttpServletRequest request, HttpServletResponse response, Model model) {
        getSysConfig(model);
        response.setStatus(HttpStatus.FORBIDDEN.value());
        return "error/403";
    }

    @RequestMapping("/404")
    public String notFund(HttpServletRequest request, HttpServletResponse response, Model model) {
        getSysConfig(model);
        return "error/404";
    }

    @RequestMapping("/500")
    public String sysError(HttpServletRequest request, HttpServletResponse response, Model model) {
        getSysConfig(model);
        return "error/500";
    }

    private void getSysConfig(Model model) {
        Map<String, String> map = sysConfigService.selectAll();
        model.addAttribute("sysConfig", map);
        BizCategory bizCategory = new BizCategory();
        bizCategory.setStatus(CoreConst.STATUS_VALID);
        model.addAttribute("categoryList", bizCategoryService.selectCategories(bizCategory));
    }
}
