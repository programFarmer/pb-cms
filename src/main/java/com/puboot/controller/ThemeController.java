package com.puboot.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.puboot.common.util.CoreConst;
import com.puboot.common.util.PageUtil;
import com.puboot.common.util.Pagination;
import com.puboot.common.util.ResultUtil;
import com.puboot.model.BizTheme;
import com.puboot.service.BizThemeService;
import com.puboot.vo.base.PageResultVo;
import com.puboot.vo.base.ResponseVo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * 后台主题配置
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Controller
@RequestMapping("theme")
@AllArgsConstructor
public class ThemeController {

    private final BizThemeService bizThemeService;


    @PostMapping("list")
    @ResponseBody
    public PageResultVo loadTheme(Integer limit, Integer offset) {
        IPage<BizTheme> page = new Pagination<>(PageUtil.getPageNo(limit, offset), limit);
        page = bizThemeService.page(page);
        return ResultUtil.table(page.getRecords(), page.getTotal());
    }

    @PostMapping("/add")
    @ResponseBody
    public ResponseVo add(BizTheme bizTheme) {
        Date date = new Date();
        bizTheme.setCreateTime(date);
        bizTheme.setUpdateTime(date);
        bizTheme.setStatus(CoreConst.STATUS_INVALID);
        boolean i = bizThemeService.save(bizTheme);
        if (i) {
            return ResultUtil.success("新增主题成功");
        } else {
            return ResultUtil.error("新增主题失败");
        }
    }

    @GetMapping("/edit")
    public String edit(Model model, Integer id) {
        BizTheme bizTheme = bizThemeService.getById(id);
        model.addAttribute("theme", bizTheme);
        return "systheme/detail";
    }

    @PostMapping("/edit")
    @ResponseBody
    public ResponseVo edit(BizTheme bizTheme) {
        bizTheme.setUpdateTime(new Date());
        boolean i = bizThemeService.updateById(bizTheme);
        if (i) {
            return ResultUtil.success("编辑主题成功");
        } else {
            return ResultUtil.error("编辑主题失败");
        }
    }

    @PostMapping("/use")
    @ResponseBody
    public ResponseVo use(Integer id) {
        int i = bizThemeService.useTheme(id);
        if (i > 0) {
            return ResultUtil.success("启用主题成功");
        } else {
            return ResultUtil.error("启用主题失败");
        }
    }

    @PostMapping("/delete")
    @ResponseBody
    public ResponseVo delete(Integer id) {
        boolean i = bizThemeService.removeById(id);
        if (i) {
            return ResultUtil.success("删除主题成功");
        } else {
            return ResultUtil.error("删除主题失败");
        }
    }

    @PostMapping("/batch/delete")
    @ResponseBody
    public ResponseVo deleteBatch(@RequestParam("ids[]") Integer[] ids) {
        int i = bizThemeService.deleteBatch(ids);
        if (i > 0) {
            return ResultUtil.success("删除主题成功");
        } else {
            return ResultUtil.error("删除主题失败");
        }
    }

}
