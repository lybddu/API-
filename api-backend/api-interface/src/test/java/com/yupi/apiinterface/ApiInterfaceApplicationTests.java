package com.yupi.apiinterface;

import com.yupi.apiclientsdk.client.ApiClient;
import com.yupi.apiclientsdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class ApiInterfaceApplicationTests {

    @Resource
    private ApiClient  apiClient;

    @Test
    void contextLoads() {
        String result = apiClient.getNameByGet("yupi");
        User user = new User();
        user.setUsername("liyupi");
        String usernameByPost = apiClient.getUsernameByPost(user);
        System.out.println(result);
        System.out.println(usernameByPost);
    }

}
