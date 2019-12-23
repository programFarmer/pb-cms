package com.puboot.module.admin.controller;

import com.alibaba.fastjson.JSON;
import com.puboot.common.util.CoreConst;
import com.puboot.common.util.MD5;
import com.puboot.common.util.QiNiuYunUtil;
import com.puboot.common.util.ResultUtil;
import com.puboot.enums.SysConfigKey;
import com.puboot.exception.UploadFileNotFoundException;
import com.puboot.module.admin.service.SysConfigService;
import com.puboot.module.admin.vo.CloudStorageConfigVo;
import com.puboot.module.admin.vo.UploadResponse;
import com.puboot.module.admin.vo.base.ResponseVo;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

/**
 * 后台文件上传接口、云存储配置
 *
 * @author Linzhaoguan
 * @version V1.0
 * @date 2019年9月11日
 */
@Slf4j
@Controller
@RequestMapping("/upload")
@AllArgsConstructor
public class UploadController {

    private final SysConfigService sysConfigService;


    @ResponseBody
    @PostMapping("/upload")
    public UploadResponse upload(@RequestParam(value = "file", required = false) MultipartFile file) throws Exception {
        if (file == null || file.isEmpty()) {
            throw new UploadFileNotFoundException(UploadResponse.Error.FILENOTFOUND);
        }
        try {
            String originalFilename = file.getOriginalFilename();
            String suffix = originalFilename.substring(originalFilename.lastIndexOf(".")).toLowerCase();
            SimpleDateFormat fmt = new SimpleDateFormat("yyyy/MM/dd");
            /*String dir = fmt.format(new Date());*/
            String value = sysConfigService.selectAll().get(SysConfigKey.CLOUD_STORAGE_CONFIG.getValue());
            CloudStorageConfigVo cloudStorageConfig = JSON.parseObject(value, CloudStorageConfigVo.class);
            String dir = cloudStorageConfig.getQiniuPrefix();
            String md5 = MD5.getMessageDigest(file.getBytes());
            String filePath = String.format("%1$s/%2$s%3$s", dir, md5, suffix);
            ResponseVo responseVo = QiNiuYunUtil.writeFile(cloudStorageConfig, filePath, file.getBytes());
            /*String fileName = String.format("%1$s%2$s", md5, suffix);*/
            String qiniuDomain = cloudStorageConfig.getQiniuDomain();
            String url = String.format("%1$s/%2$s", qiniuDomain, filePath);
            if (responseVo.getStatus().equals(CoreConst.SUCCESS_CODE)) {
              /*  File sysFile = new File();
                sysFile.setName(originalFilename);
                sysFile.setSize(file.getSize()+"");
                sysFile.setType(suffix);
                sysFile.setUrl(url);
                sysFile.setRelUrl(filePath);
                sysFile.setCreateTime(new Date());
                fileService.insertFile(sysFile);*/
                return new UploadResponse(url, originalFilename, suffix, url, CoreConst.SUCCESS_CODE);
            } else {
                return new UploadResponse(originalFilename, CoreConst.FAIL_CODE, responseVo.getMsg());
            }
        } catch (Exception e) {
            log.error(String.format("UploadController.upload%s", e));
            throw e;
        }
    }

    @ResponseBody
    @PostMapping("/upload2QiniuForMd")
    public Object upload2QiniuForMd(@RequestParam("file") MultipartFile file) throws IOException {
        if (file == null || file.isEmpty()) {
            throw new UploadFileNotFoundException(UploadResponse.Error.FILENOTFOUND);
        }
        try {
            String originalFilename = file.getOriginalFilename();
            String suffix = originalFilename.substring(originalFilename.lastIndexOf(".")).toLowerCase();
            String value = sysConfigService.selectAll().get(SysConfigKey.CLOUD_STORAGE_CONFIG.getValue());
            CloudStorageConfigVo cloudStorageConfig = JSON.parseObject(value, CloudStorageConfigVo.class);
            String dir = cloudStorageConfig.getQiniuPrefix();
            String md5 = MD5.getMessageDigest(file.getBytes());
            String filePath = String.format("%1$s/%2$s%3$s", dir, md5, suffix);
            ResponseVo responseVo = QiNiuYunUtil.writeFile(cloudStorageConfig, filePath, file.getBytes());
            String qiniuDomain = cloudStorageConfig.getQiniuDomain();
            String url = String.format("%1$s/%2$s", qiniuDomain, filePath);
            if (responseVo.getStatus().equals(CoreConst.SUCCESS_CODE)) {
                Map<String, Object> resultMap = new HashMap<>(3);
                resultMap.put("success", 1);
                resultMap.put("message", "上传成功");
                resultMap.put("filename", url);
                return resultMap;
            } else {
                return new UploadResponse(originalFilename, CoreConst.FAIL_CODE, responseVo.getMsg());
            }
        } catch (Exception e) {
            log.error(String.format("UploadController.upload%s", e));
            throw e;
        }
    }

    @GetMapping("/config")
    public String config(Model model) {
        String value = sysConfigService.selectAll().get(SysConfigKey.CLOUD_STORAGE_CONFIG.getValue());
        CloudStorageConfigVo cloudStorageConfig = JSON.parseObject(value, CloudStorageConfigVo.class);
        model.addAttribute("cloudStorageConfig", cloudStorageConfig);
        return "upload/config";
    }

    @ResponseBody
    @PostMapping("/saveConfig")
    public ResponseVo saveConfig(CloudStorageConfigVo cloudStorageConfig) {
        String value = JSON.toJSONString(cloudStorageConfig);
        boolean a = sysConfigService.updateByKey(SysConfigKey.CLOUD_STORAGE_CONFIG.getValue(), value);
        if (a) {
            return ResultUtil.success("云存储配置保存成功！");
        } else {
            return ResultUtil.error("云存储配置保存失败！");
        }

    }

}
