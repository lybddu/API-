package com.yupi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yupi.apicommon.model.entity.InterfaceInfo;

/**
* @author liyb
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2024-11-09 10:08:35
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);
}
