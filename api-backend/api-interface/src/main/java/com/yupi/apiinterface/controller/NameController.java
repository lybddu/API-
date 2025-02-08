package com.yupi.apiinterface.controller;


import com.yupi.apiclientsdk.model.User;
import com.yupi.apiclientsdk.utils.SignUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 名称 API
 *
 * @author lyb
 */
@RestController
@RequestMapping("/name")
public class NameController {

    @GetMapping("/get")
    public String getNameByGet(String name,HttpServletRequest request) {
        System.out.println(request.getHeader("yupi"));
        return "GET 你的名字是" +name;
    }

    @PostMapping ("/post")
    public String getNameByPost(@RequestParam String name) {
        return "POST 你的名字是" +name;
    }
    @PostMapping ("/user")
    public String getUsernameByPost(@RequestBody User user, HttpServletRequest request) {
//        String accessKey = request.getHeader("accessKey");
//        String nonce = request.getHeader("nonce");
//        String timestamp = request.getHeader("timestamp");
//        String sign = request.getHeader("sign");
//        String body = request.getHeader("body");
//        //todo 去数据库查
//        if(!accessKey.equals("yupi") ){
//            throw new RuntimeException("无权限");
//        }
//        if(Long.parseLong(nonce) > 10000){
//            throw new  RuntimeException("无权限");
//        }
//        //todo 时间和当前时间不超过5分钟
////        if(timestamp){
////
////        }
//        //todo 实际情况从数据库查取
//        String serverSign = SignUtils.genSign(body, "abcdefgh");
//        if(!sign.equals(serverSign)){
//            throw new RuntimeException("签名错误");
//        }
        String result = "POST 用户名是" + user.getUsername();
        //调用结束后，次数加1


        return result;
    }
}
