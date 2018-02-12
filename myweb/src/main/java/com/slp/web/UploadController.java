package com.slp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/**
 * @author sanglp
 * @create 2018-02-08 14:47
 * @desc 文件上传
 **/
@Controller
public class UploadController {
    @RequestMapping(value = "/upLoadFile", method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public void upLoadFile(HttpServletRequest request) throws IOException {
    CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
            request.getSession().getServletContext());
    System.out.println("进入上传文件");
    // 判断 request 是否有文件上传,即多部分请求
        if (multipartResolver.isMultipart(request)) {
            System.out.println("文件请求");
        // 转换成多部分request
        MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
        // 取得request中的所有文件名
        Iterator<String> iter = multiRequest.getFileNames();
        while (iter.hasNext()) {
            System.out.println("递归请求");
            // 取得上传文件
            MultipartFile f = multiRequest.getFile(iter.next());
            if (f != null) {
                // 取得当前上传文件的文件名称
                String myFileName = f.getOriginalFilename();
                System.out.println("文件名称"+myFileName);
                // 如果名称不为“”,说明该文件存在，否则说明该文件不存在
                if (myFileName.trim() != "") {
                    // 定义上传路径
                    String path = "D:\\weixin\\"
                            + myFileName;
                    File localFile = new File(path);
                    f.transferTo(localFile);
                }
            }
        }
    }
}
}
