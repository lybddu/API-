insert into api_project.interface_info (id, name, description, url, requestHeader, responseHeader, status, method, userId, createTime, updateTime, isDelete, requestParams)
values  (1, 'getNameByPost', '获取用户名', 'http://localhost:8123/api/name/user', '{"Content-Type":"application/json"}', '{
  "Content-Type": "application/json"
}', 1, 'POST', 1, '2024-11-30 12:56:28', '2025-01-11 20:09:13', 0, '[
  {
    "name": "username",
    "type": "string"
  }
]'),
        (2, '随机毒鸡汤', '随机毒鸡汤', 'http://localhost:8090/api/poisonousChickenSoup', 'null', 'null', 1, 'GET', 1, '2024-11-30 20:07:46', '2025-01-11 20:09:13', 0, 'null'),
        (3, '雷昊焱', '段鹭洋', 'www.carmella-borer.name', '陶文昊', '洪博文', 1, '蒋烨伟', 188829675, '2024-11-30 12:10:12', '2025-01-11 14:54:08', 0, 'null'),
        (4, '熊文', '孟靖琪', 'www.cleo-carter.info', '黎熠彤', '戴耀杰', 1, '邓乐驹', 816408419, '2024-11-30 12:10:12', '2025-01-11 14:53:24', 0,'null' ),
        (5, '田烨磊', '邱瑾瑜', 'www.randy-bode.net', '何伟祺', '刘子骞', 0, '何明', 4, '2024-11-30 12:10:12', '2024-11-30 12:10:12', 0, 'null'),
        (6, '顾明', '宋正豪', 'www.carmella-borer.name', '唐晓啸', '邵晟睿', 0, '萧熠彤', 68618, '2024-11-30 12:10:12', '2024-11-30 12:10:12', 0, 'null'),
        (7, '方鸿涛', '贺烨华', 'www.darin-mcdermott.org', '毛展鹏', '陶晓啸', 0, '赵懿轩', 0, '2024-11-30 12:10:12', '2024-11-30 12:10:12', 0, 'null'),
        (8, '毛思远', '白睿渊', 'www.darin-mcdermott.org', '黄弘文', '傅果', 0, '贾峻熙', 94, '2024-11-30 12:10:12', '2024-11-30 12:10:12', 0, 'null'),
        (9, '汪志泽', '韦越泽', 'www.darin-mcdermott.org', '汪鹏飞', '方晓啸', 0, '苏子骞', 5438, '2024-11-30 12:10:12', '2024-11-30 12:10:12', 0, 'null'),
        (10, '邱黎昕', '罗博涛', 'www.darin-mcdermott.org', '冯建辉', '许鸿涛', 0, '刘擎苍', 9469, '2024-11-30 12:10:12', '2025-01-05 00:27:35', 1, 'null'),
        (11, '测试', '123132', 'localhost:8080', 'adaf', 'afag', 0, 'Get', 1, '2025-01-01 13:51:00', '2025-01-01 19:39:49', 1, 'null'),
        (12, '朱文', '邹思源1', 'www.carmella-borer.name', '叶伟泽', '董晋鹏', 0, '方伟泽', 2047663545, '2024-11-30 12:10:12', '2025-01-11 20:00:21', 1, 'null'),
        (13, '张智渊', '洪峻熙', 'www.carmella-borer.name', '邱烨霖', '姜鹤轩', 1, '谭弘文', 8043, '2024-11-30 12:10:12', '2025-01-11 20:00:46', 0, 'null');

insert into api_project.user_interface_info (id, userId, interfaceInfoId, totalNum, leftNum, status, createTime, updateTime, isDelete)
values  (1, 1, 1, 7, 0, 0, '2025-01-06 17:38:35', '2025-01-11 20:14:08', 0),
        (2, 2, 3, 2, 10, 0, '2025-01-11 14:52:30', '2025-01-11 14:57:44', 0),
        (3, 1, 2, 5, 10, 0, '2025-01-11 14:52:30', '2025-01-11 14:57:44', 0),
        (4, 2, 3, 3, 10, 0, '2025-01-11 14:52:30', '2025-01-11 14:57:44', 0),
        (5, 1, 4, 4, 10, 0, '2025-01-11 14:52:30', '2025-01-11 14:57:44', 0);

insert into api_project.user (id, userName, userAccount, userAvatar, gender, userRole, userPassword, accessKey, secretKey, createTime, updateTime, isDelete)
values  (1, '李', 'yupi', 'https://q6.itc.cn/q_70/images03/20240329/df77e1535ebb4a0a8c1a0a1cbd2b6290.jpeg', null, 'admin', 'b0dd3697a192885d7c055db46155b26a', 'yupi', 'abcdefgh', '2025-01-02 13:21:12', '2025-01-11 15:53:41', 0),
        (2, null, 'yupi1', 'https://pic.rmb.bdstatic.com/bjh/events/d443c68e526615158cc1d4c7aca3c7d95677.jpeg@h_1280', null, 'user', 'b0dd3697a192885d7c055db46155b26a', 'uibijhbiubnon', 'd8c1747ba27aad2141ccd63ad9669f53', '2025-01-05 12:12:02', '2025-01-11 15:06:30', 0);