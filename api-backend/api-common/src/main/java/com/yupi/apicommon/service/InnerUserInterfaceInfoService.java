package com.yupi.apicommon.service;


/**
 * 内部用户接口信息服务
* @author liyb
* @description
* @createDate 2025-01-06 13:39:27
*/

public interface InnerUserInterfaceInfoService {

    /**
     * 调用接口统计
     * @param interfaceInfoId
     * @param userId
     * @return
     */
    boolean invokeCount(long interfaceInfoId,long userId);
}
