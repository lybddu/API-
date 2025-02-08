use api_project;

-- 接口信息
create table if not exists api_project.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestParams` text not null comment '请求参数',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态（0-关闭，1-开启）',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
    ) comment '接口信息' DEFAULT CHARSET=utf8;



# alter table interface_info default character set utf8;

# alter database api_project character set utf8;


-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('朱文', '邹思源', 'www.carmella-borer.name', '叶伟泽', '董晋鹏', 0, '方伟泽', 2047663545);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('张智渊', '洪峻熙', 'www.carmella-borer.name', '邱烨霖', '姜鹤轩', 0, '谭弘文', 8043);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('雷昊焱', '段鹭洋', 'www.carmella-borer.name', '陶文昊', '洪博文', 0, '蒋烨伟', 188829675);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('熊文', '孟靖琪', 'www.cleo-carter.info', '黎熠彤', '戴耀杰', 0, '邓乐驹', 816408419);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('田烨磊', '邱瑾瑜', 'www.randy-bode.net', '何伟祺', '刘子骞', 0, '何明', 4);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('顾明', '宋正豪', 'www.carmella-borer.name', '唐晓啸', '邵晟睿', 0, '萧熠彤', 68618);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('方鸿涛', '贺烨华', 'www.darin-mcdermott.org', '毛展鹏', '陶晓啸', 0, '赵懿轩', 0);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('毛思远', '白睿渊', 'www.darin-mcdermott.org', '黄弘文', '傅果', 0, '贾峻熙', 94);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('汪志泽', '韦越泽', 'www.darin-mcdermott.org', '汪鹏飞', '方晓啸', 0, '苏子骞', 5438);
-- insert into api_project.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('邱黎昕', '罗博涛', 'www.darin-mcdermott.org', '冯建辉', '许鸿涛', 0, '刘擎苍', 9469);


# SHOW CREATE TABLE user;

# SHOW CREATE TABLE interface_info;

-- 用户调用接口关系表
create table if not exists api_project.`user_interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `userId` bigint not null comment '调用用户 id',
    `interfaceInfoId` bigint not null comment '接口 id',
    `totalNum` int default 0 not null comment '总调用次数',
    `leftNum` int default 0 not null comment '剩余调用次数',
    `status` int default 0 not null comment '0-正常，1-禁用',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '用户调用接口关系';

# SHOW CREATE TABLE user_interface_info;