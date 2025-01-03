package com.indusec.file.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.indusec.common.model.PageResult;
import com.indusec.file.mapper.FileMapper;
import com.indusec.file.model.FileInfo;
import com.indusec.file.service.IFileService;
import com.indusec.file.utils.FileUtil;
import com.indusec.oss.model.ObjectInfo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.MapUtils;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * <p> AbstractIFileService 抽取类 </p>
 *
 * <p> 根据paip.file-server.type 实例化具体对象 </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Slf4j
public abstract class AbstractIFileService extends ServiceImpl<FileMapper, FileInfo> implements IFileService {
    private static final String FILE_SPLIT = ".";

    @Override
    public FileInfo upload(MultipartFile file) {
        FileInfo fileInfo = FileUtil.getFileInfo(file);
        if (!fileInfo.getName().contains(FILE_SPLIT)) {
            throw new IllegalArgumentException("缺少后缀名");
        }
        ObjectInfo objectInfo = uploadFile(file);
        fileInfo.setPath(objectInfo.getObjectPath());
        fileInfo.setUrl(objectInfo.getObjectUrl());
        // 设置文件来源
        fileInfo.setSource(fileType());
        // 将文件信息保存到数据库
        baseMapper.insert(fileInfo);

        return fileInfo;
    }

    /**
     * 文件来源
     *
     * @return
     */
    protected abstract String fileType();

    /**
     * 上传文件
     *
     * @param file
     */
    protected abstract ObjectInfo uploadFile(MultipartFile file);

    /**
     * 删除文件
     *
     * @param id 文件id
     */
    @Override
    public void delete(String id) {
        FileInfo fileInfo = baseMapper.selectById(id);
        if (fileInfo != null) {
            baseMapper.deleteById(fileInfo.getId());
            this.deleteFile(fileInfo.getPath());
        }
    }

    /**
     * 删除文件资源
     *
     * @param objectPath
     * @return
     */
    protected abstract void deleteFile(String objectPath);

    @Override
    public PageResult<FileInfo> findList(Map<String, Object> params) {
        Page<FileInfo> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<FileInfo> list = baseMapper.findList(page, params);
        return PageResult.<FileInfo>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
