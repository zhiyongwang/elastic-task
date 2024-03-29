package com.xxl.job.executor.mvc.controller;//package com.xxl.job.executor.mvc.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@EnableAutoConfiguration
public class IndexController {

    @RequestMapping("/status")
    @ResponseBody
    String status() {
        return "xxl job executor running.";
    }

}