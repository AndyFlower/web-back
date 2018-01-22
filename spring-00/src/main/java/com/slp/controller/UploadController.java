package com.slp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * @author sanglp
 * @create 2018-01-22 13:43
 * @desc 文件上传
 **/
@Controller
public class UploadController {
    @RequestMapping(path = "/form",method = RequestMethod.POST)
    public String handleFormUpload(@RequestParam("name")String name, @RequestParam("file")MultipartFile file) throws IOException {
        if (!file.isEmpty()){
            byte [] bytes = file.getBytes();

            return "success";
        }
        return "fail";
    }
}
