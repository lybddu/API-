import { GithubOutlined } from '@ant-design/icons';
import { WechatOutlined } from '@ant-design/icons/lib/icons';
import { DefaultFooter } from '@ant-design/pro-components';
import React from 'react';

const Footer: React.FC = () => {
  return (
    <DefaultFooter
      style={{
        background: 'none',
      }}
      links={[
        {
          key: 'Ant Design Pro',
          title: (
            <>
              <WechatOutlined />
              联系作者
            </>
          ),
          href: 'http://user.llyb.fun/wechat.png',
          blankTarget: true,
        },
        {
          key: 'github',
          title: (
            <>
              <GithubOutlined />
              支持项目
            </>
          ),
          href: 'https://github.com/lybddu',
          blankTarget: true,
        },
        {
          key: 'Ant Design',
          title: 'Ant Design',
          href: 'https://ant.design',
          blankTarget: true,
        },
      ]}
    />
  );
};

export default Footer;
