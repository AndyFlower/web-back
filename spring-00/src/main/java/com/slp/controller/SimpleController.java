package com.slp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.io.IOException;

/**
 * @author sanglp
 * @create 2018-01-22 13:58
 * @desc ExceptionHandler注解处理异常
 **/
@Controller
public class SimpleController {
    @ExceptionHandler
    public ResponseEntity<String> handleIOException(IOException ex){
        ResponseEntity<String> responseEntity = new ResponseEntity<String>(HttpStatus.ACCEPTED);
        return responseEntity;
    }
}
