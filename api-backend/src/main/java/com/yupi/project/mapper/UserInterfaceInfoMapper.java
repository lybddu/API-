package com.yupi.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.yupi.apicommon.model.entity.UserInterfaceInfo;

import java.util.List;


/**
* @author liyb
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Mapper
* @createDate 2025-01-06 13:39:27
* @Entity com.yupi.project.model.entity.UserInterfaceInfo
*/
public interface UserInterfaceInfoMapper extends BaseMapper<UserInterfaceInfo> {

    List<UserInterfaceInfo> listTopInvokeInterfaceInfo(int limit);

}




