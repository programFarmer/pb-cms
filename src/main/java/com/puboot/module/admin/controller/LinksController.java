package com.puboot.module.admin.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.puboot.common.util.CoreConst;
import com.puboot.common.util.ResultUtil;
import com.puboot.module.admin.model.BizLink;
import com.puboot.module.admin.service.BizLinkService;
import com.puboot.module.admin.vo.base.PageResultVo;
import com.puboot.module.admin.vo.base.ResponseVo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * 后台友情链接管理
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Controller
@RequestMapping("link")
@AllArgsConstructor
public class LinksController {

    private final BizLinkService linkService;

    @PostMapping("list")
    @ResponseBody
    public PageResultVo loadLinks(BizLink bizLink, Integer pageNumber, Integer pageSize) {
        IPage<BizLink> bizLinkPage = linkService.pageLinks(bizLink, pageNumber, pageSize);
        return ResultUtil.table(bizLinkPage.getRecords(), bizLinkPage.getTotal());
    }

    @PostMapping("/add")
    @ResponseBody
    public ResponseVo add(BizLink bizLink) {
        Date date = new Date();
        bizLink.setCreateTime(date);
        bizLink.setUpdateTime(date);
        boolean i = linkService.save(bizLink);
        if (i) {
            return ResultUtil.success("新增友链成功");
        } else {
            return ResultUtil.error("新增友链失败");
        }
    }

    @GetMapping("/edit")
    public String edit(Model model, Integer id) {
        BizLink bizLink = linkService.getById(id);
        model.addAttribute("link", bizLink);
        return CoreConst.ADMIN_PREFIX + "link/detail";
    }

    @PostMapping("/edit")
    @ResponseBody
    public ResponseVo edit(BizLink bizLink) {
        bizLink.setUpdateTime(new Date());
        boolean i = linkService.updateById(bizLink);
        if (i) {
            return ResultUtil.success("编辑友链成功");
        } else {
            return ResultUtil.error("编辑友链失败");
        }
    }

    @PostMapping("/delete")
    @ResponseBody
    public ResponseVo delete(Integer id) {
        boolean i = linkService.removeById(id);
        if (i) {
            return ResultUtil.success("删除友链成功");
        } else {
            return ResultUtil.error("删除友链失败");
        }
    }

    @PostMapping("/batch/delete")
    @ResponseBody
    public ResponseVo deleteBatch(@RequestParam("ids[]") Integer[] ids) {
        int i = linkService.deleteBatch(ids);
        if (i > 0) {
            return ResultUtil.success("删除友链成功");
        } else {
            return ResultUtil.error("删除友链失败");
        }
    }

}
