package com.indusec.file.utils;

import cn.hutool.core.util.IdUtil;
import com.indusec.file.model.FileInfo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

/**
 * <p> 文件工具类 </p>
 *
 * <p> Description </p>
 *
 * @author: L.J
 * @email: JiangLie@Hotmail.com
 * @version: 3.0.0
 * @since: 2019/10/26
 */
@Slf4j
public class FileUtil {
    private FileUtil() {
        throw new IllegalStateException("Utility class");
    }

    public static FileInfo getFileInfo(MultipartFile file) {
        FileInfo fileInfo = new FileInfo();
        fileInfo.setId(IdUtil.fastSimpleUUID());
        fileInfo.setName(file.getOriginalFilename());
        fileInfo.setContentType(file.getContentType());
        fileInfo.setIsImg(fileInfo.getContentType().startsWith("image/"));
        fileInfo.setSize(file.getSize());
        fileInfo.setCreateTime(new Date());
        return fileInfo;
    }

    /**
     * 文件的md5
     *
     * @param inputStream
     * @return
     */
    public static String fileMd5(InputStream inputStream) {
        try {
            return DigestUtils.md5Hex(inputStream);
        } catch (IOException e) {
            log.error("FileUtil->fileMd5:{}", e.getMessage());
        }
        return null;
    }

    /**
     * save File
     *
     * @param file
     * @param path
     * @return
     */
    public static String saveFile(MultipartFile file, String path) {
        try {
            File targetFile = new File(path);
            if (targetFile.exists()) {
                return path;
            }
            if (!targetFile.getParentFile().exists()) {
                targetFile.getParentFile().mkdirs();
            }
            file.transferTo(targetFile);
            return path;
        } catch (Exception e) {
            log.error("FileUtil->saveFile:{}", e.getMessage());
        }
        return null;
    }

    /**
     * delete File
     *
     * @param pathname
     * @return
     */
    public static boolean deleteFile(String pathname) {
        File file = new File(pathname);
        if (file.exists()) {
            boolean flag = file.delete();
            if (flag) {
                File[] files = file.getParentFile().listFiles();
                if (files == null || files.length == 0) {
                    file.getParentFile().delete();
                }
            }
            return flag;
        }
        return false;
    }
}
