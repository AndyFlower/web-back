package com.slp.domain;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author sanglp
 * @create 2018-01-08 15:26
 * @desc 文件上传实体
 **/
public class FileModel {
    private MultipartFile file;

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }
}
