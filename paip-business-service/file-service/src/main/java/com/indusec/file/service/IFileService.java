package com.indusec.file.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.indusec.common.model.PageResult;
import com.indusec.file.model.FileInfo;
import org.springframework.web.multipart.MultipartFile;

import java.io.OutputStream;
import java.util.Map;

/**
 * <p> 文件service </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
public interface IFileService extends IService<FileInfo> {
    PageResult<FileInfo> findList(Map<String, Object> params);

    FileInfo upload(MultipartFile file) throws Exception;

    void delete(String id);

    void out(String id, OutputStream os);
}
