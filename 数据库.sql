-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2026-05-15 20:58:36
-- 服务器版本： 5.7.44-log
-- PHP 版本： 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `cert`
--

-- --------------------------------------------------------

--
-- 表的结构 `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `login_time` bigint(20) DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `wx_openid` varchar(100) DEFAULT NULL,
  `qq_openid` varchar(100) DEFAULT NULL,
  `sina_openid` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `agent_themes`
--

CREATE TABLE `agent_themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  `sort` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `agent_themes`
--

INSERT INTO `agent_themes` (`id`, `name`, `value`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, '默认版时间锁', '1', 1, 1, '2026-05-02 20:33:14.339', '2026-05-02 20:38:49.445'),
(2, '经典版时间锁', '2', 2, 1, '2026-05-02 20:33:14.339', '2026-05-02 20:38:51.701'),
(3, '商务版时间锁', '3', 3, 1, '2026-05-02 20:33:14.339', '2026-05-02 20:38:54.004'),
(4, '少女版时间锁', '4', 4, 1, '2026-05-02 20:33:14.339', '2026-05-02 20:38:56.696'),
(5, '少年版时间锁', '5', 5, 1, '2026-05-02 20:33:14.339', '2026-05-02 20:39:00.871'),
(6, '拟态版时间锁', '6', 6, 1, '2026-05-02 20:33:14.339', '2026-05-02 20:39:04.785'),
(7, 'V2版时间锁', '7', 7, 1, '2026-05-02 20:34:29.122', '2026-05-02 20:39:07.716'),
(8, '专业版时间锁', '8', 8, 1, '2026-05-02 20:35:06.436', '2026-05-02 20:39:14.062'),
(9, 'WX简约版时间锁', '9', 9, 1, '2026-05-02 20:35:21.075', '2026-05-02 20:39:11.175'),
(10, '炫酷版时间锁', '10', 10, 1, '2026-05-02 20:35:58.392', '2026-05-02 20:39:18.495'),
(11, '新春版时间锁', '11', 11, 1, '2026-05-02 20:36:13.811', '2026-05-02 20:39:23.009'),
(12, '少女粉版时间锁', '12', 12, 1, '2026-05-02 20:36:32.177', '2026-05-02 20:39:25.723'),
(13, '商务版二时间锁', '13', 13, 1, '2026-05-02 20:37:04.192', '2026-05-02 20:39:28.668'),
(14, '卡通版时间锁', '14', 14, 1, '2026-05-02 20:37:18.348', '2026-05-02 20:39:32.628'),
(15, '炫彩版时间锁', '15', 15, 1, '2026-05-02 20:38:09.138', '2026-05-02 20:39:36.441'),
(16, 'S1版时间锁', '16', 16, 1, '2026-05-02 20:38:21.543', '2026-05-02 20:39:39.590'),
(17, '默认版-后面的是第一版贴牌普通版', '17', 17, 1, '2026-05-02 20:40:25.650', '2026-05-11 23:33:20.089'),
(18, '经典版普通版', '18', 18, 1, '2026-05-11 23:31:22.644', '2026-05-11 23:31:35.537'),
(19, '商务版普通版', '19', 19, 1, '2026-05-11 23:31:28.341', '2026-05-11 23:31:37.203'),
(20, '少女版普通版', '20', 20, 1, '2026-05-11 23:31:43.068', '2026-05-11 23:31:43.068'),
(21, '少年版普通版', '21', 21, 1, '2026-05-11 23:31:48.100', '2026-05-11 23:31:48.100'),
(22, '拟态版普通版', '22', 22, 1, '2026-05-11 23:31:52.702', '2026-05-11 23:31:52.702'),
(23, 'V2版普通版', '23', 23, 1, '2026-05-11 23:31:59.172', '2026-05-11 23:31:59.172'),
(24, '专业版普通版', '24', 24, 1, '2026-05-11 23:32:05.094', '2026-05-11 23:32:05.094'),
(25, 'WX简约版普通版', '25', 25, 1, '2026-05-11 23:32:12.585', '2026-05-11 23:32:12.585'),
(26, '炫酷版普通版', '26', 26, 1, '2026-05-11 23:32:26.560', '2026-05-11 23:32:26.560'),
(27, '少女粉版普通版', '27', 27, 1, '2026-05-11 23:32:33.976', '2026-05-11 23:32:33.976'),
(28, 'S1版普通版', '28', 28, 1, '2026-05-11 23:32:39.838', '2026-05-11 23:32:39.838');

-- --------------------------------------------------------

--
-- 表的结构 `apple_accounts`
--

CREATE TABLE `apple_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iss` varchar(64) DEFAULT NULL,
  `kid` varchar(20) DEFAULT NULL,
  `p8` text,
  `p8_file` varchar(255) DEFAULT NULL,
  `p12_content` longtext,
  `cert_type` varchar(30) DEFAULT 'IOS_DISTRIBUTION',
  `cid` varchar(50) DEFAULT NULL,
  `bid` varchar(50) DEFAULT NULL,
  `dev_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `iphone` bigint(20) DEFAULT '100',
  `ipad` bigint(20) DEFAULT '100',
  `mac` bigint(20) DEFAULT '100',
  `expire_time` datetime(3) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `weight` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `is_booking` tinyint(4) DEFAULT '0',
  `open0` tinyint(4) DEFAULT '0',
  `open1` tinyint(4) DEFAULT '0',
  `open2` tinyint(4) DEFAULT '0',
  `open3` tinyint(4) DEFAULT '0',
  `open4` tinyint(4) DEFAULT '0',
  `open_ipad` tinyint(4) DEFAULT '0',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `bundle_id` varchar(100) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `icon` text,
  `ipa_path` varchar(500) DEFAULT NULL,
  `file_size` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `is_sign_tool` tinyint(4) DEFAULT '0',
  `weight` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `group` varchar(50) DEFAULT 'basic',
  `title` varchar(100) DEFAULT NULL,
  `value` text,
  `type` varchar(20) DEFAULT 'string'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `device_backup_profiles`
--

CREATE TABLE `device_backup_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kid` varchar(10) DEFAULT NULL,
  `bundle_id` varchar(50) DEFAULT NULL,
  `mp_content` longtext,
  `status` varchar(20) DEFAULT 'available',
  `created_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `email_codes`
--

CREATE TABLE `email_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT 'register',
  `used` tinyint(1) DEFAULT '0',
  `expire_time` bigint(20) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_admin`
--

CREATE TABLE `fa_admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(20) DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `password` varchar(32) DEFAULT '' COMMENT '密码',
  `salt` varchar(30) DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `email` varchar(100) DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号码',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) DEFAULT NULL COMMENT '登录IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_admin_log`
--

CREATE TABLE `fa_admin_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) DEFAULT '' COMMENT '日志标题',
  `content` longtext NOT NULL COMMENT '内容',
  `ip` varchar(50) DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) DEFAULT '' COMMENT 'User-Agent',
  `createtime` bigint(16) DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理员日志表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_agentapplelist`
--

CREATE TABLE `fa_agentapplelist` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `p8` varchar(255) NOT NULL DEFAULT '',
  `iss` text NOT NULL,
  `kid` text NOT NULL,
  `cid` text NOT NULL,
  `bid` text NOT NULL,
  `p12` longtext,
  `devname` text,
  `mac` int(3) DEFAULT NULL,
  `ipad` int(3) DEFAULT NULL,
  `iphone` int(3) DEFAULT NULL,
  `dqtime` varchar(50) DEFAULT '',
  `beizhu` text,
  `zt` int(1) DEFAULT '1',
  `yy` int(1) DEFAULT '0',
  `ylmac` int(3) DEFAULT '0',
  `zszt` int(1) DEFAULT '1',
  `email` text,
  `ylipad` int(3) DEFAULT '0',
  `yliphone` int(3) DEFAULT '0',
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `fa_agentsite`
--

CREATE TABLE `fa_agentsite` (
  `id` int(10) NOT NULL,
  `site` varchar(20) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `sitename` varchar(100) DEFAULT NULL,
  `notice` text,
  `buy_url` varchar(255) DEFAULT NULL,
  `background_url` varchar(500) DEFAULT 'https://cdn.seovx.com/?mom=302',
  `contact_url` varchar(500) DEFAULT NULL,
  `domain_url` varchar(500) DEFAULT NULL,
  `font_color` varchar(20) DEFAULT '#FFFFFF',
  `question_url` varchar(500) DEFAULT NULL,
  `theme` varchar(10) DEFAULT '1',
  `btn_color` varchar(20) DEFAULT '#FF0000',
  `bottom_html` text,
  `icon_url` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `background_color` varchar(20) DEFAULT '#ffc0cb42',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fa_apihost`
--

CREATE TABLE `fa_apihost` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT 'this',
  `token` varchar(255) DEFAULT NULL,
  `is_book` tinyint(4) DEFAULT '0',
  `open0` tinyint(4) DEFAULT '0',
  `open1` tinyint(4) DEFAULT '0',
  `open2` tinyint(4) DEFAULT '0',
  `open3` tinyint(4) DEFAULT '0',
  `open4` tinyint(4) DEFAULT '0',
  `openiphone` tinyint(4) DEFAULT '1',
  `openipad` tinyint(4) DEFAULT '0',
  `map0` tinyint(4) DEFAULT '0',
  `map1` tinyint(4) DEFAULT '1',
  `map2` tinyint(4) DEFAULT '2',
  `map3` tinyint(4) DEFAULT '3',
  `map4` tinyint(4) DEFAULT '4',
  `sort` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_api_interface`
--

CREATE TABLE `fa_api_interface` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '接口名称',
  `api_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'API地址',
  `api_token` varchar(255) NOT NULL DEFAULT '' COMMENT 'API接口Token',
  `warranty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '主要质保版本:0=躺平版,1=标准版,2=加强版,3=稳定版,4=摆烂版',
  `device_type` varchar(20) NOT NULL DEFAULT 'iphone' COMMENT '设备类型:iphone=iPhone,ipad=iPad,reserve=预约',
  `interface_id` int(11) DEFAULT NULL COMMENT '对应的质保版本类型：0躺平版，1标准版，2加强版，3稳定版，4摆烂版',
  `station_type` varchar(20) NOT NULL DEFAULT 'tongkuan' COMMENT '对接站类型:tongkuan=同款,chuizi=锤子,xiaomao=小猫版',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态:-1=已禁用,0=正常,1=维护中',
  `remark` text COMMENT '备注',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='API接口管理表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_appleidlist`
--

CREATE TABLE `fa_appleidlist` (
  `id` int(11) NOT NULL,
  `iss` varchar(255) NOT NULL,
  `kid` varchar(50) NOT NULL,
  `p8` varchar(255) NOT NULL,
  `p12` longtext NOT NULL,
  `bid` varchar(50) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `beizhu` text NOT NULL,
  `devname` varchar(255) NOT NULL,
  `iphone` int(3) NOT NULL DEFAULT '0',
  `ipad` int(3) NOT NULL DEFAULT '0',
  `mac` int(3) NOT NULL DEFAULT '0',
  `dqtime` varchar(50) NOT NULL,
  `zt` int(1) NOT NULL DEFAULT '1',
  `yy` int(1) NOT NULL DEFAULT '0',
  `weigh` int(10) NOT NULL DEFAULT '0',
  `yz` int(11) NOT NULL DEFAULT '0',
  `open_ipad` int(1) NOT NULL DEFAULT '0' COMMENT 'openIpad',
  `open0` int(1) NOT NULL DEFAULT '0' COMMENT '摆烂',
  `open1` int(1) NOT NULL DEFAULT '0' COMMENT '躺平',
  `open2` int(1) NOT NULL DEFAULT '0' COMMENT '标准',
  `open3` int(1) NOT NULL DEFAULT '0' COMMENT '加强',
  `open4` int(1) NOT NULL DEFAULT '0' COMMENT '稳定',
  `open5` int(1) NOT NULL DEFAULT '0' COMMENT '普通',
  `email` text,
  `sh` int(11) NOT NULL DEFAULT '0',
  `capabilities_count` varchar(255) NOT NULL DEFAULT '0项权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `fa_area`
--

CREATE TABLE `fa_area` (
  `id` int(10) NOT NULL COMMENT 'ID',
  `pid` int(10) DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) DEFAULT NULL COMMENT '简称',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) DEFAULT NULL COMMENT '全称',
  `level` tinyint(4) DEFAULT NULL COMMENT '层级:1=省,2=市,3=区/县',
  `pinyin` varchar(100) DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) DEFAULT NULL COMMENT '纬度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='地区表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_attachment`
--

CREATE TABLE `fa_attachment` (
  `id` int(20) UNSIGNED NOT NULL COMMENT 'ID',
  `category` varchar(50) DEFAULT '' COMMENT '类别',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) DEFAULT '' COMMENT '文件名称',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) DEFAULT '' COMMENT '透传数据',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建日期',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` bigint(16) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) DEFAULT '' COMMENT '文件 sha1编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='附件表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_group`
--

CREATE TABLE `fa_auth_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分组表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_group_access`
--

CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限分组表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_rule`
--

CREATE TABLE `fa_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `url` varchar(255) DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) DEFAULT '' COMMENT '条件',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) DEFAULT '' COMMENT '拼音',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='节点表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_category`
--

CREATE TABLE `fa_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) DEFAULT '',
  `nickname` varchar(50) DEFAULT '',
  `flag` set('hot','index','recommend') DEFAULT '',
  `image` varchar(100) DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) DEFAULT '' COMMENT '自定义名称',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) DEFAULT '' COMMENT '状态',
  `upipa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `baoming` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `banben` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '上传者',
  `filesize` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件大小',
  `is_signtool` int(1) NOT NULL DEFAULT '0' COMMENT '签名工具'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分类表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_config`
--

CREATE TABLE `fa_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT '' COMMENT '变量名',
  `group` varchar(30) DEFAULT '' COMMENT '分组',
  `title` varchar(100) DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) DEFAULT '' COMMENT '可见条件',
  `value` text COMMENT '变量值',
  `content` text COMMENT '变量字典数据',
  `rule` varchar(100) DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) DEFAULT '' COMMENT '配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统配置';

-- --------------------------------------------------------

--
-- 表的结构 `fa_deviceslist`
--

CREATE TABLE `fa_deviceslist` (
  `id` int(11) NOT NULL,
  `kid` varchar(10) NOT NULL,
  `udid` varchar(50) NOT NULL,
  `zspt` bigint(20) DEFAULT '1',
  `deviceid` varchar(30) NOT NULL,
  `base64mp` text NOT NULL,
  `base64p12` text NOT NULL,
  `zt` varchar(30) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `tjtime` bigint(16) NOT NULL,
  `dqtime` varchar(50) DEFAULT NULL,
  `beizhu` text,
  `type` bigint(20) DEFAULT '0',
  `shouhou` bigint(20) DEFAULT '0',
  `shtype` bigint(20) DEFAULT NULL,
  `model` text,
  `chi` bigint(20) DEFAULT '0',
  `platform` varchar(10) DEFAULT NULL,
  `serialNumber` varchar(128) DEFAULT NULL,
  `cost` bigint(20) DEFAULT '0',
  `price` bigint(20) DEFAULT '0',
  `hashP12` varchar(50) NOT NULL DEFAULT '',
  `disable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否禁用: 1=正常, 0=禁用',
  `source` varchar(100) DEFAULT '本站',
  `api_host_id` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fa_deviceslist1`
--

CREATE TABLE `fa_deviceslist1` (
  `id` int(50) NOT NULL,
  `kid` varchar(10) NOT NULL,
  `udid` varchar(50) NOT NULL,
  `zspt` int(2) NOT NULL DEFAULT '1' COMMENT '证书平台',
  `deviceid` varchar(30) NOT NULL,
  `base64mp` text NOT NULL,
  `base64p12` text NOT NULL,
  `zt` varchar(30) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `tjtime` bigint(16) NOT NULL,
  `dqtime` varchar(50) DEFAULT NULL,
  `beizhu` varchar(300) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `shouhou` int(1) DEFAULT '0',
  `shtype` int(1) NOT NULL DEFAULT '1' COMMENT '售后类型',
  `model` text,
  `chi` int(1) NOT NULL DEFAULT '0',
  `platform` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '平台',
  `serialNumber` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '序列号',
  `cost` int(32) DEFAULT '0' COMMENT '成本',
  `price` int(32) DEFAULT '0' COMMENT '售价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fa_deviceslist_bak`
--

CREATE TABLE `fa_deviceslist_bak` (
  `id` int(50) NOT NULL,
  `kid` varchar(10) NOT NULL,
  `udid` varchar(50) NOT NULL,
  `zspt` int(2) NOT NULL DEFAULT '1' COMMENT '证书平台',
  `deviceid` varchar(30) NOT NULL,
  `base64mp` text NOT NULL,
  `base64p12` text NOT NULL,
  `zt` varchar(30) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `tjtime` bigint(16) NOT NULL,
  `dqtime` varchar(50) DEFAULT NULL,
  `beizhu` varchar(300) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `shouhou` int(1) DEFAULT '0',
  `shtype` int(1) NOT NULL DEFAULT '1' COMMENT '售后类型',
  `model` text,
  `chi` int(1) NOT NULL DEFAULT '0',
  `platform` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '平台',
  `serialNumber` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '序列号',
  `cost` int(32) DEFAULT '0' COMMENT '成本',
  `price` int(32) DEFAULT '0' COMMENT '售价',
  `hashP12` varchar(50) NOT NULL,
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  `disable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否禁用: 1=正常, 0=禁用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `fa_device_add_biz_log`
--

CREATE TABLE `fa_device_add_biz_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `udid` varchar(64) DEFAULT NULL,
  `device_type` varchar(20) DEFAULT NULL,
  `warranty` bigint(20) DEFAULT NULL,
  `pool_type` bigint(20) DEFAULT NULL,
  `is_booking` tinyint(4) DEFAULT '0',
  `result_type` varchar(20) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `kid` varchar(64) DEFAULT NULL,
  `duration_ms` bigint(20) DEFAULT NULL,
  `request_body` longtext,
  `response_body` longtext,
  `client_ip` varchar(64) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_device_management`
--

CREATE TABLE `fa_device_management` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `udid` varchar(100) NOT NULL COMMENT '设备UDID',
  `device_name` varchar(255) DEFAULT '' COMMENT '设备名称',
  `device_model` varchar(100) DEFAULT '' COMMENT '设备型号',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `kami_id` int(11) DEFAULT NULL COMMENT '卡密ID',
  `kami_code` varchar(100) DEFAULT '' COMMENT '卡密代码',
  `certificate_id` varchar(100) DEFAULT '' COMMENT '证书ID',
  `timelock_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '时间锁类型: 0=不限制, 1=月卡, 2=60天卡, 3=90天卡, 4=半年卡, 5=年卡',
  `activation_time` datetime NOT NULL COMMENT '激活时间',
  `expiration_time` datetime DEFAULT NULL COMMENT '到期时间',
  `status` enum('active','expired','disabled','deleted') DEFAULT 'active' COMMENT '设备状态',
  `disable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁用: 0=正常, 1=禁用',
  `remarks` text COMMENT '备注信息',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='设备管理表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_ems`
--

CREATE TABLE `fa_ems` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) DEFAULT '' COMMENT '事件',
  `email` varchar(100) DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) DEFAULT '' COMMENT 'IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='邮箱验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_enterprise_shared_cert`
--

CREATE TABLE `fa_enterprise_shared_cert` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cert_name` varchar(255) DEFAULT NULL,
  `p12_content` longtext,
  `mp_content` longtext,
  `p12_password` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `bundle_id` varchar(255) DEFAULT NULL,
  `profile_name` varchar(255) DEFAULT NULL,
  `udid` varchar(128) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'normal',
  `expire_time` varchar(50) DEFAULT NULL,
  `uploaded_by` varchar(50) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_failed_tasks`
--

CREATE TABLE `fa_failed_tasks` (
  `id` int(11) NOT NULL,
  `task_type` varchar(50) NOT NULL DEFAULT 'third_party_callback' COMMENT '任务类型',
  `interface_name` varchar(100) NOT NULL COMMENT '接口名称',
  `task_data` text NOT NULL COMMENT '任务数据',
  `error_message` text COMMENT '错误信息',
  `status` enum('pending','processing','completed','failed') NOT NULL DEFAULT 'pending' COMMENT '任务状态',
  `retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '重试次数',
  `max_retry` int(11) NOT NULL DEFAULT '3' COMMENT '最大重试次数',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='失败任务表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_help_article`
--

CREATE TABLE `fa_help_article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `cover_url` varchar(500) DEFAULT NULL,
  `content_html` longtext,
  `view_count` bigint(20) DEFAULT '0',
  `like_count` bigint(20) DEFAULT '0',
  `comment_count` bigint(20) DEFAULT '0',
  `is_pinned` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
  `published_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_help_article_category`
--

CREATE TABLE `fa_help_article_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `sort` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_invite_rebate_log`
--

CREATE TABLE `fa_invite_rebate_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inviter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inviter_name` varchar(50) DEFAULT NULL,
  `invitee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invitee_name` varchar(50) DEFAULT NULL,
  `order_no` varchar(64) DEFAULT NULL,
  `recharge_amount` decimal(10,2) DEFAULT NULL,
  `rebate_rate` decimal(6,2) DEFAULT NULL,
  `rebate_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_invite_withdraw`
--

CREATE TABLE `fa_invite_withdraw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `withdraw_qr` varchar(500) DEFAULT NULL,
  `pay_proof` varchar(500) DEFAULT NULL,
  `admin_note` text,
  `pay_note` text,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `processed_at` datetime(3) DEFAULT NULL,
  `processed_by_id` bigint(20) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_kami`
--

CREATE TABLE `fa_kami` (
  `id` int(10) NOT NULL,
  `kami` varchar(255) DEFAULT NULL,
  `udid` varchar(50) DEFAULT NULL,
  `jhtime` varchar(50) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0',
  `shtype` tinyint(4) DEFAULT NULL,
  `pool` tinyint(4) DEFAULT '0',
  `beizhu` varchar(255) DEFAULT NULL,
  `uid` bigint(20) UNSIGNED DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `open` tinyint(4) DEFAULT '1',
  `timelock_type` tinyint(4) DEFAULT '0',
  `zsid` varchar(10) DEFAULT NULL,
  `deviceType` tinyint(4) DEFAULT '0',
  `cert_type` varchar(30) DEFAULT 'IOS_DISTRIBUTION'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fa_notice`
--

CREATE TABLE `fa_notice` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '消息名称',
  `event` varchar(255) DEFAULT NULL COMMENT '消息事件',
  `platform` enum('user','admin','mptemplate') DEFAULT 'user' COMMENT '平台:user=用户,admin=后台',
  `type` enum('msg','email','mptemplate','miniapp','sms') NOT NULL COMMENT '消息类型:msg=站内通知,email=邮箱通知',
  `to_id` int(255) NOT NULL COMMENT '接收人id',
  `content` text COMMENT '内容',
  `ext` text COMMENT '扩展',
  `notice_template_id` int(11) UNSIGNED DEFAULT '0' COMMENT '消息模板',
  `readtime` bigint(16) DEFAULT NULL COMMENT '是否已读',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息通知';

-- --------------------------------------------------------

--
-- 表的结构 `fa_notice_admin_mptemplate`
--

CREATE TABLE `fa_notice_admin_mptemplate` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员',
  `nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '微信头像',
  `openid` varchar(100) DEFAULT NULL,
  `unionid` varchar(100) DEFAULT NULL,
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='管理员绑定微信(模版消息)';

-- --------------------------------------------------------

--
-- 表的结构 `fa_notice_event`
--

CREATE TABLE `fa_notice_event` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `platform` set('user','admin') NOT NULL DEFAULT 'user' COMMENT '支持平台:user=用户,admin=后台',
  `type` set('msg','email','mptemplate','miniapp','sms') NOT NULL COMMENT '支持类型:msg=站内通知,email=邮箱通知',
  `name` varchar(50) NOT NULL COMMENT '消息名称',
  `event` varchar(50) NOT NULL COMMENT '消息事件',
  `send_num` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发送次数',
  `send_fail_num` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发送失败次数',
  `content` text COMMENT '参数',
  `visible_switch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态:0=关闭,1=启用',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) UNSIGNED DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息事件';

-- --------------------------------------------------------

--
-- 表的结构 `fa_notice_template`
--

CREATE TABLE `fa_notice_template` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `notice_event_id` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '事件',
  `platform` enum('user','admin') NOT NULL DEFAULT 'user' COMMENT '平台:user=用户,admin=后台',
  `type` enum('msg','email','mptemplate','miniapp','sms') NOT NULL COMMENT '类型:msg=站内通知,email=邮箱通知',
  `mptemplate_id` varchar(100) DEFAULT '' COMMENT '微信公众号模板id',
  `mptemplate_json` varchar(3000) DEFAULT NULL COMMENT '公众号模版数据',
  `content` text COMMENT '消息内容',
  `visible_switch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态:0=关闭,1=启用',
  `send_num` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发送次数',
  `send_fail_num` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发送失败次数',
  `ext` varchar(255) DEFAULT NULL COMMENT '扩展数据',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `url` varchar(300) DEFAULT NULL COMMENT 'url',
  `url_title` varchar(100) DEFAULT NULL COMMENT 'url标题',
  `url_type` tinyint(255) UNSIGNED DEFAULT '1' COMMENT 'url类型:1=链接,2=弹窗,3=新窗口',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息模版';

-- --------------------------------------------------------

--
-- 表的结构 `fa_paylist`
--

CREATE TABLE `fa_paylist` (
  `id` int(10) NOT NULL,
  `oid` int(255) NOT NULL,
  `uid` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `num` int(5) DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  `tjtime` bigint(20) NOT NULL,
  `fktime` bigint(20) DEFAULT NULL,
  `zt` int(1) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fa_poster_template`
--

CREATE TABLE `fa_poster_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout_key` varchar(32) DEFAULT NULL,
  `sort` bigint(20) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `font_family` varchar(160) DEFAULT NULL,
  `font_url` varchar(500) DEFAULT NULL,
  `default_content` longtext,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `editor_schema` longtext,
  `components` longtext,
  `width` bigint(20) DEFAULT '375',
  `height` bigint(20) DEFAULT '667'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_pre_deduct`
--

CREATE TABLE `fa_pre_deduct` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `udid` varchar(100) NOT NULL COMMENT '设备UDID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `ktoken` varchar(100) NOT NULL COMMENT '用户token',
  `kid` varchar(50) DEFAULT NULL COMMENT '证书ID（成功后更新）',
  `deduct_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '扣费金额',
  `deduct_type` enum('money','score') NOT NULL DEFAULT 'money' COMMENT '扣费类型：money=余额，score=积分',
  `warranty` int(11) NOT NULL DEFAULT '1' COMMENT '质保版本',
  `status` enum('pending','success','refunded') NOT NULL DEFAULT 'pending' COMMENT '状态：pending=待确认，success=成功，refunded=已退回',
  `log_id` int(11) DEFAULT NULL COMMENT '资金变动日志ID',
  `create_time` int(11) NOT NULL COMMENT '创建时间（时间戳）',
  `expire_time` int(11) NOT NULL COMMENT '过期时间（时间戳，5分钟后）',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间（时间戳）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='预扣费记录表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_request_log`
--

CREATE TABLE `fa_request_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(10) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `query` text,
  `client_ip` varchar(64) DEFAULT NULL,
  `user_agent` varchar(512) DEFAULT NULL,
  `request_headers` longtext,
  `request_body` longtext,
  `status_code` bigint(20) DEFAULT NULL,
  `app_code` bigint(20) DEFAULT '0',
  `result_type` varchar(20) DEFAULT NULL,
  `error_message` varchar(500) DEFAULT NULL,
  `response_body` longtext,
  `duration_ms` bigint(20) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_signlist`
--

CREATE TABLE `fa_signlist` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `tjtime` bigint(25) NOT NULL,
  `udid` varchar(60) NOT NULL,
  `appname` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fa_signtool`
--

CREATE TABLE `fa_signtool` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `short_site` varchar(255) NOT NULL,
  `app_bundle_id` varchar(255) NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `plist_url` varchar(255) DEFAULT NULL,
  `default_app_source_urls` varchar(255) DEFAULT NULL,
  `app_icon_url` varchar(255) DEFAULT NULL,
  `app_launch_icon_url` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `contact_url` varchar(255) DEFAULT NULL,
  `buy_url` varchar(255) DEFAULT NULL,
  `tutorial_url` varchar(255) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `exchange` tinyint(4) DEFAULT '0',
  `import_permissions` tinyint(4) DEFAULT '0',
  `locktimemsg` varchar(255) NOT NULL DEFAULT '设备已被禁用，请联系客服' COMMENT '时间锁禁用后提示信息',
  `whitelist` tinyint(4) DEFAULT '0',
  `time` tinyint(4) DEFAULT '1',
  `timeinhibit` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `fa_signtool_timede`
--

CREATE TABLE `fa_signtool_timede` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `site` varchar(255) NOT NULL COMMENT '站点',
  `appicon` varchar(255) NOT NULL COMMENT '贴牌图标',
  `icon_url` varchar(255) DEFAULT NULL COMMENT '图标URL',
  `siteurl` varchar(255) NOT NULL,
  `bidname` varchar(50) DEFAULT NULL COMMENT '贴牌ID',
  `btn_color` varchar(255) NOT NULL COMMENT '字体颜色',
  `theme` varchar(255) NOT NULL COMMENT '主题',
  `background_color` varchar(255) NOT NULL COMMENT '背景颜色',
  `notice` varchar(255) NOT NULL COMMENT '公告',
  `siteimg` varchar(255) NOT NULL COMMENT '站点背景',
  `background_url` varchar(255) DEFAULT NULL COMMENT '背景图片URL',
  `sitename` varchar(11) NOT NULL COMMENT '站点名字',
  `bidswitch` tinyint(1) DEFAULT '1' COMMENT '贴牌开关：0=关闭，1=开启',
  `appname` varchar(100) DEFAULT NULL COMMENT '贴牌名称',
  `appstoretype` tinyint(1) DEFAULT '1' COMMENT '添加软件源开关：0=关闭，1=打开',
  `appstoreswitch` tinyint(1) DEFAULT '1' COMMENT '软件源开关：0=关闭，1=开启',
  `inappstoreswitch` tinyint(1) DEFAULT '1' COMMENT '导入软件源：0=关闭，1=开启',
  `timelock` tinyint(1) DEFAULT '1' COMMENT '贴牌时间锁：0=关闭，1=打开',
  `timelockswitch` tinyint(1) DEFAULT '0' COMMENT '时间锁：0=关闭，1=开启',
  `importswitch` tinyint(1) DEFAULT '1' COMMENT '贴牌导入权限：0=关闭，1=打开',
  `exportswitch` tinyint(1) DEFAULT '1' COMMENT '贴牌导出权限：0=关闭，1=打开',
  `plistswitch` tinyint(1) DEFAULT '1' COMMENT '安装域名：0=自有，1=官方',
  `checkudidswitch` tinyint(1) DEFAULT '0' COMMENT 'UDID检测：0=启用，1=关闭',
  `appstore` varchar(255) DEFAULT NULL COMMENT '软件源地址',
  `buy` varchar(255) DEFAULT NULL COMMENT '购买链接',
  `buy_url` varchar(255) DEFAULT NULL COMMENT '购买链接URL',
  `contact` varchar(255) DEFAULT NULL COMMENT '联系我们',
  `contact_url` varchar(255) DEFAULT NULL COMMENT '联系客服URL',
  `jc` varchar(255) DEFAULT NULL COMMENT '教程地址',
  `qq` varchar(255) DEFAULT NULL COMMENT '领取福利',
  `question_url` varchar(255) DEFAULT NULL COMMENT '问题反馈URL',
  `app_color` varchar(10) NOT NULL DEFAULT '#29a7f5' COMMENT 'APP主题颜色',
  `font_color` varchar(10) NOT NULL DEFAULT '#333333' COMMENT '字体颜色',
  `switch` tinyint(1) DEFAULT '1' COMMENT '授权开关：0=未授权，1=已授权',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `endtime` int(11) DEFAULT NULL COMMENT '到期时间',
  `apihit` int(11) DEFAULT '0' COMMENT 'API调用次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='贴牌工具时间锁配置表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_sms`
--

CREATE TABLE `fa_sms` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号',
  `code` varchar(10) DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) DEFAULT '' COMMENT 'IP',
  `createtime` bigint(16) UNSIGNED DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短信验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_softwaresource_apps`
--

CREATE TABLE `fa_softwaresource_apps` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `bt1a` varchar(500) DEFAULT NULL,
  `bt1b` varchar(255) DEFAULT NULL,
  `bt2a` varchar(255) DEFAULT NULL,
  `bt2b` varchar(255) DEFAULT NULL,
  `beizhu` text,
  `keywords` text,
  `description` text,
  `weigh` bigint(20) DEFAULT '0',
  `status` varchar(30) DEFAULT 'normal',
  `createtime` bigint(20) DEFAULT NULL,
  `updatetime` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='软件源应用表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_softwaresource_black`
--

CREATE TABLE `fa_softwaresource_black` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `udid` varchar(128) DEFAULT NULL COMMENT '设备码',
  `addtime` bigint(20) DEFAULT NULL,
  `usetime` bigint(20) DEFAULT NULL,
  `endtime` bigint(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'normal',
  `ud_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='软件源黑名单表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_softwaresource_config`
--

CREATE TABLE `fa_softwaresource_config` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sourceURL` varchar(500) DEFAULT NULL,
  `sourceicon` varchar(500) DEFAULT NULL,
  `payURL` varchar(500) DEFAULT NULL,
  `unlockURL` varchar(500) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `message` text,
  `encrypt` varchar(255) DEFAULT NULL,
  `opencry` tinyint(4) DEFAULT '0',
  `openblack` tinyint(4) DEFAULT '0',
  `openblack2` tinyint(4) DEFAULT '0',
  `status` varchar(30) DEFAULT 'normal',
  `createtime` bigint(20) DEFAULT NULL,
  `updatetime` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='软件源配置表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_softwaresource_kami`
--

CREATE TABLE `fa_softwaresource_kami` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kami` varchar(128) DEFAULT NULL,
  `udid` varchar(128) DEFAULT NULL,
  `jh` tinyint(4) DEFAULT '0',
  `addtime` bigint(20) DEFAULT NULL,
  `usetime` bigint(20) DEFAULT NULL,
  `endtime` bigint(20) DEFAULT NULL,
  `kmyp` bigint(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='软件源卡密表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_softwaresource_monitor`
--

CREATE TABLE `fa_softwaresource_monitor` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `udid` varchar(255) NOT NULL COMMENT '设备码',
  `identity` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `ud_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='软件源监控表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_test`
--

CREATE TABLE `fa_test` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int(10) DEFAULT '0' COMMENT '会员ID',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `image` varchar(100) DEFAULT '' COMMENT '图片',
  `images` varchar(1500) DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `city` varchar(100) DEFAULT '' COMMENT '省市',
  `array` varchar(255) DEFAULT '' COMMENT '数组:value=值',
  `json` varchar(255) DEFAULT '' COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '价格',
  `views` int(10) UNSIGNED DEFAULT '0' COMMENT '点击',
  `workrange` varchar(100) DEFAULT '' COMMENT '时间区间',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` bigint(16) DEFAULT NULL COMMENT '刷新时间',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='测试表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_third`
--

CREATE TABLE `fa_third` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int(10) UNSIGNED DEFAULT '0' COMMENT '会员ID',
  `platform` varchar(30) DEFAULT '' COMMENT '第三方应用',
  `apptype` varchar(50) DEFAULT '' COMMENT '应用类型',
  `unionid` varchar(100) DEFAULT '' COMMENT '第三方UNIONID',
  `openname` varchar(100) NOT NULL DEFAULT '' COMMENT '第三方会员昵称',
  `openid` varchar(100) DEFAULT '' COMMENT '第三方OPENID',
  `access_token` varchar(255) DEFAULT '' COMMENT 'AccessToken',
  `refresh_token` varchar(255) DEFAULT 'RefreshToken',
  `expires_in` int(10) UNSIGNED DEFAULT '0' COMMENT '有效期',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `expiretime` bigint(16) DEFAULT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方登录表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `fa_ticket`
--

CREATE TABLE `fa_ticket` (
  `id` int(11) NOT NULL,
  `ticket_no` varchar(30) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `images` longtext,
  `status` tinyint(4) DEFAULT '0',
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工单表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_ticket_reply`
--

CREATE TABLE `fa_ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT '0',
  `content` text,
  `images` longtext,
  `create_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工单回复表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_timeout_tasks`
--

CREATE TABLE `fa_timeout_tasks` (
  `id` int(11) NOT NULL,
  `task_type` varchar(50) NOT NULL DEFAULT 'third_party_timeout' COMMENT '任务类型',
  `interface_name` varchar(100) NOT NULL COMMENT '接口名称',
  `task_data` text NOT NULL COMMENT '任务数据',
  `timeout_duration` int(11) NOT NULL DEFAULT '30000' COMMENT '超时时间(毫秒)',
  `status` enum('pending','processing','completed','failed') NOT NULL DEFAULT 'pending' COMMENT '任务状态',
  `retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '重试次数',
  `max_retry` int(11) NOT NULL DEFAULT '2' COMMENT '最大重试次数',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='超时任务表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_udid_lock`
--

CREATE TABLE `fa_udid_lock` (
  `key` varchar(191) NOT NULL COMMENT '锁定值',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `expiretime` bigint(16) DEFAULT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='锁定表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_udid_requests`
--

CREATE TABLE `fa_udid_requests` (
  `id` int(11) NOT NULL,
  `request_id` varchar(255) NOT NULL,
  `udid` varchar(255) NOT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `device_product` varchar(255) DEFAULT NULL,
  `device_version` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `fa_user`
--

CREATE TABLE `fa_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `notification` tinyint(4) DEFAULT '1',
  `mobile` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `invite_code` varchar(20) DEFAULT NULL,
  `invite_count` bigint(20) DEFAULT '0',
  `invited_by` bigint(20) UNSIGNED DEFAULT '0',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) DEFAULT '0.00',
  `score` bigint(20) DEFAULT '0',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` bigint(16) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `loginfailuretime` bigint(16) DEFAULT NULL COMMENT '最后登录失败时间',
  `joinip` varchar(50) DEFAULT '' COMMENT '加入IP',
  `jointime` bigint(16) DEFAULT NULL COMMENT '加入时间',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(64) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'normal',
  `verification` varchar(255) DEFAULT '' COMMENT '验证',
  `ktoken` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '请更换token' COMMENT 'ktoken',
  `openid` varchar(128) DEFAULT NULL,
  `jifen` int(11) NOT NULL DEFAULT '0',
  `tuid` int(10) DEFAULT NULL,
  `costype` int(1) NOT NULL DEFAULT '0',
  `txid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txkey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txendpoint` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `txbucket` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `aliid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alikey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `aliendpoint` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alibucket` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mac` int(1) NOT NULL DEFAULT '0',
  `price` varchar(100) DEFAULT NULL,
  `yy_price` varchar(50) DEFAULT NULL,
  `site` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `signtool` tinyint(4) DEFAULT '0',
  `force_days` bigint(20) DEFAULT '0',
  `qiandao_score` int(11) NOT NULL DEFAULT '0' COMMENT '签到积分',
  `last_qiandao_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次签到时间',
  `iphone_price` varchar(50) DEFAULT NULL,
  `yuyue_price` varchar(50) DEFAULT NULL,
  `ipad_price` varchar(50) DEFAULT NULL,
  `cert_price` decimal(10,2) DEFAULT '0.00',
  `pool_price` decimal(10,2) DEFAULT '0.00',
  `mac_permission` tinyint(4) DEFAULT '0',
  `notify_channel` varchar(20) DEFAULT 'wechat',
  `email_notify_ok` tinyint(4) DEFAULT '0',
  `qiyekami` varchar(100) DEFAULT '',
  `qiye_cert_id` bigint(20) UNSIGNED DEFAULT '0',
  `invite_rebate_total` decimal(10,2) DEFAULT '0.00',
  `invite_rebate_balance` decimal(10,2) DEFAULT '0.00',
  `invite_rebate_frozen` decimal(10,2) DEFAULT '0.00',
  `invite_rebate_withdrawn` decimal(10,2) DEFAULT '0.00',
  `invite_withdraw_qr` varchar(500) DEFAULT NULL,
  `login_time` bigint(20) DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_group`
--

CREATE TABLE `fa_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员组表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_log`
--

CREATE TABLE `fa_user_log` (
  `id` int(11) NOT NULL COMMENT '日志ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `action` varchar(50) NOT NULL COMMENT '操作类型',
  `description` text COMMENT '操作描述',
  `before_data` text COMMENT '操作前数据',
  `after_data` text COMMENT '操作后数据',
  `ip` varchar(45) DEFAULT NULL COMMENT 'IP地址',
  `user_agent` text COMMENT '用户代理',
  `status` tinyint(1) DEFAULT '1' COMMENT '操作状态：1成功，0失败',
  `error_msg` text COMMENT '错误信息',
  `create_time` int(11) NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作日志表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_money_log`
--

CREATE TABLE `fa_user_money_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `before` decimal(10,2) DEFAULT NULL,
  `after` decimal(10,2) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `createtime` bigint(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT '' COMMENT '用户名',
  `source` varchar(20) DEFAULT 'user' COMMENT '来源',
  `ip` varchar(64) DEFAULT '' COMMENT 'IP地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员余额变动表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_rule`
--

CREATE TABLE `fa_user_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员规则表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_score_log`
--

CREATE TABLE `fa_user_score_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) DEFAULT '' COMMENT '备注',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员积分变动表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_token`
--

CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `expiretime` bigint(16) DEFAULT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员Token表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_version`
--

CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `oldversion` varchar(30) DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) DEFAULT '' COMMENT '包大小',
  `content` varchar(500) DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='版本表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_website`
--

CREATE TABLE `fa_website` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `bidname` varchar(255) DEFAULT NULL,
  `bidswitch` tinyint(4) DEFAULT '1',
  `appname` varchar(255) DEFAULT NULL,
  `app_type` tinyint(4) DEFAULT '0',
  `appstoretype` tinyint(1) DEFAULT '1' COMMENT '添加软件源开关：0=关闭，1=打开',
  `appstoreswitch` tinyint(4) DEFAULT '0',
  `inappstoreswitch` tinyint(4) DEFAULT '1',
  `timelock` tinyint(1) DEFAULT '0' COMMENT '贴牌时间锁：0=关闭，1=打开',
  `timelockswitch` tinyint(4) DEFAULT '0',
  `importswitch` tinyint(4) DEFAULT '0',
  `exportswitch` tinyint(4) DEFAULT '0',
  `plistswitch` tinyint(4) DEFAULT '0',
  `checkudidswitch` tinyint(4) DEFAULT '0',
  `appstore` text,
  `buy` text,
  `contact` text,
  `jc` text,
  `qq` text,
  `app_color` varchar(10) NOT NULL DEFAULT '#29a7f5' COMMENT 'APP主题颜色',
  `switch` tinyint(4) DEFAULT '1',
  `createtime` bigint(20) DEFAULT NULL,
  `updatetime` bigint(20) DEFAULT NULL,
  `endtime` bigint(20) DEFAULT NULL,
  `apihit` bigint(20) DEFAULT NULL,
  `unresolved_fee` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='站点授权表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_whitelist`
--

CREATE TABLE `fa_whitelist` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `jy` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(32) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '1',
  `amount` decimal(10,2) DEFAULT NULL,
  `num` bigint(20) DEFAULT '0',
  `pay_type` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `paid_at` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `short_urls`
--

CREATE TABLE `short_urls` (
  `short_code` varchar(10) NOT NULL,
  `long_url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `sys_attachment`
--

CREATE TABLE `sys_attachment` (
  `id` bigint(20) NOT NULL COMMENT '文件ID',
  `app_id` varchar(64) NOT NULL COMMENT '应用ID',
  `drive` varchar(64) DEFAULT NULL COMMENT '上传驱动',
  `name` varchar(1000) DEFAULT NULL COMMENT '文件原始名',
  `kind` varchar(16) DEFAULT NULL COMMENT '上传类型',
  `mime_type` varchar(128) NOT NULL DEFAULT '' COMMENT '扩展类型',
  `path` varchar(1000) DEFAULT NULL COMMENT '本地路径',
  `size` bigint(20) DEFAULT '0' COMMENT '文件大小',
  `ext` varchar(50) DEFAULT NULL COMMENT '扩展名',
  `md5` varchar(32) DEFAULT NULL COMMENT 'md5校验码',
  `created_by` bigint(20) DEFAULT '0' COMMENT '上传人ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='附件管理' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sys_auth_rule`
--

CREATE TABLE `sys_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(300) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `menu_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类型 0目录 1菜单 2按钮',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `is_hide` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '显示状态',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(100) NOT NULL DEFAULT '' COMMENT '组件路径',
  `is_link` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否外链 1是 0否',
  `module_type` varchar(30) NOT NULL DEFAULT '' COMMENT '所属模块',
  `model_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模型ID',
  `is_iframe` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否内嵌iframe',
  `is_cached` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否缓存',
  `redirect` varchar(255) NOT NULL DEFAULT '' COMMENT '路由重定向地址',
  `is_affix` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否固定',
  `link_url` varchar(500) NOT NULL DEFAULT '' COMMENT '链接地址',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单节点表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_config`
--

CREATE TABLE `sys_config` (
  `config_id` int(5) UNSIGNED NOT NULL COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` tinyint(1) DEFAULT '0' COMMENT '系统内置（Y是 N否）',
  `create_by` int(64) UNSIGNED DEFAULT '0' COMMENT '创建者',
  `update_by` int(64) UNSIGNED DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_dept`
--

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(3) UNSIGNED DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `created_by` bigint(20) UNSIGNED DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict_data`
--

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认（1是 0否）',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态（1正常 0停用）',
  `create_by` bigint(64) UNSIGNED DEFAULT '0' COMMENT '创建者',
  `update_by` bigint(64) UNSIGNED DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict_type`
--

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) UNSIGNED NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` int(64) UNSIGNED DEFAULT '0' COMMENT '创建者',
  `update_by` int(64) UNSIGNED DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_job`
--

CREATE TABLE `sys_job` (
  `job_id` bigint(20) UNSIGNED NOT NULL COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_params` varchar(200) DEFAULT '' COMMENT '参数',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(100) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` tinyint(4) DEFAULT '1' COMMENT '计划执行策略（1多次执行 2执行一次）',
  `concurrent` tinyint(4) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `created_by` bigint(64) UNSIGNED DEFAULT '0' COMMENT '创建者',
  `updated_by` bigint(64) UNSIGNED DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_job_log`
--

CREATE TABLE `sys_job_log` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '主键',
  `target_name` varchar(100) NOT NULL COMMENT '方法名',
  `created_at` datetime DEFAULT NULL COMMENT '执行日期',
  `result` varchar(100) DEFAULT NULL COMMENT '执行结果'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='任务日志表' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sys_login_log`
--

CREATE TABLE `sys_login_log` (
  `info_id` bigint(20) NOT NULL COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` tinyint(4) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `module` varchar(30) DEFAULT '' COMMENT '登录模块'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_notice`
--

CREATE TABLE `sys_notice` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `title` varchar(64) NOT NULL COMMENT '标题',
  `type` bigint(20) NOT NULL COMMENT '类型',
  `tag` int(11) DEFAULT NULL COMMENT '标签',
  `content` longtext NOT NULL COMMENT '内容',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `created_by` bigint(20) DEFAULT NULL COMMENT '发送人',
  `updated_by` bigint(20) DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  `receiver` json DEFAULT NULL COMMENT '接收者（私信）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知公告' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sys_notice_read`
--

CREATE TABLE `sys_notice_read` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `notice_id` bigint(20) NOT NULL COMMENT '信息id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `clicks` int(11) DEFAULT NULL COMMENT '点击次数',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `created_at` datetime DEFAULT NULL COMMENT '阅读时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已读记录' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `sys_oper_log`
--

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) UNSIGNED NOT NULL COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(500) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` text COMMENT '请求参数',
  `error_msg` text COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_post`
--

CREATE TABLE `sys_post` (
  `post_id` bigint(20) UNSIGNED NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `sys_role`
--

CREATE TABLE `sys_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父级ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `list_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `data_scope` tinyint(3) UNSIGNED NOT NULL DEFAULT '3' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加人',
  `effectiveTime` text COMMENT '角色有效日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `user_apple_accounts`
--

CREATE TABLE `user_apple_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `iss` varchar(64) DEFAULT NULL,
  `kid` varchar(20) DEFAULT NULL,
  `p8` text,
  `p8_file` varchar(255) DEFAULT NULL,
  `p12_content` longtext,
  `cid` varchar(50) DEFAULT NULL,
  `bid` varchar(50) DEFAULT NULL,
  `cert_type` varchar(30) DEFAULT 'IOS_DISTRIBUTION',
  `dev_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `iphone` bigint(20) DEFAULT '100',
  `ipad` bigint(20) DEFAULT '100',
  `mac` bigint(20) DEFAULT '100',
  `used_iphone` bigint(20) DEFAULT '0',
  `used_ipad` bigint(20) DEFAULT '0',
  `used_mac` bigint(20) DEFAULT '0',
  `expire_time` datetime(3) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `zt` tinyint(4) DEFAULT '1',
  `yy` tinyint(4) DEFAULT '0',
  `zszt` tinyint(4) DEFAULT '1',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `user_o_auths`
--

CREATE TABLE `user_o_auths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `social_uid` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wechat_config`
--

CREATE TABLE `wechat_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `group` varchar(30) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wechat_fans`
--

CREATE TABLE `wechat_fans` (
  `fans_id` bigint(20) UNSIGNED NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `nickname_decode` varchar(255) DEFAULT NULL,
  `head_img_url` varchar(500) DEFAULT NULL,
  `sex` bigint(20) DEFAULT '1',
  `language` varchar(20) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `union_id` varchar(255) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT '0',
  `is_subscribe` bigint(20) DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `subscribe_time` bigint(20) DEFAULT NULL,
  `subscribe_scene` varchar(100) DEFAULT NULL,
  `unsubscribe_time` bigint(20) DEFAULT NULL,
  `update_date` bigint(20) DEFAULT NULL,
  `tag_id_list` varchar(255) DEFAULT NULL,
  `subscribe_scene_name` varchar(50) DEFAULT NULL,
  `qr_scene` varchar(255) DEFAULT NULL,
  `qr_scene_str` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wechat_menu`
--

CREATE TABLE `wechat_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `key` varchar(128) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `app_id` varchar(100) DEFAULT NULL,
  `page_path` varchar(255) DEFAULT NULL,
  `media_id` varchar(100) DEFAULT NULL,
  `sort` bigint(20) DEFAULT '0',
  `status` bigint(20) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wechat_news`
--

CREATE TABLE `wechat_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'normal',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wechat_reply`
--

CREATE TABLE `wechat_reply` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` varchar(1000) DEFAULT NULL,
  `reply_type` varchar(10) DEFAULT 'text',
  `matching_type` bigint(20) DEFAULT '1',
  `content` text,
  `status` varchar(30) DEFAULT 'normal',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `wechat_template`
--

CREATE TABLE `wechat_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temp_key` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `temp_id` varchar(100) DEFAULT NULL,
  `open_type` bigint(20) DEFAULT '0',
  `open_url` varchar(255) DEFAULT NULL,
  `app_id` varchar(100) DEFAULT NULL,
  `page_path` varchar(100) DEFAULT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT '0',
  `field_map` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转储表的索引
--

--
-- 表的索引 `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_admins_username` (`username`),
  ADD KEY `idx_admins_deleted_at` (`deleted_at`);

--
-- 表的索引 `agent_themes`
--
ALTER TABLE `agent_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_agent_themes_value` (`value`);

--
-- 表的索引 `apple_accounts`
--
ALTER TABLE `apple_accounts`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_configs_name` (`name`);

--
-- 表的索引 `device_backup_profiles`
--
ALTER TABLE `device_backup_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_device_backup_profiles_kid` (`kid`),
  ADD KEY `idx_device_backup_profiles_device_id` (`device_id`);

--
-- 表的索引 `email_codes`
--
ALTER TABLE `email_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_codes_email` (`email`),
  ADD KEY `idx_email_codes_code` (`code`),
  ADD KEY `idx_email_codes_expire_time` (`expire_time`);

--
-- 表的索引 `fa_admin`
--
ALTER TABLE `fa_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- 表的索引 `fa_admin_log`
--
ALTER TABLE `fa_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`);

--
-- 表的索引 `fa_agentapplelist`
--
ALTER TABLE `fa_agentapplelist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_agentsite`
--
ALTER TABLE `fa_agentsite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_agentsite_site` (`site`);

--
-- 表的索引 `fa_apihost`
--
ALTER TABLE `fa_apihost`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_api_interface`
--
ALTER TABLE `fa_api_interface`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warranty` (`warranty`),
  ADD KEY `device_type` (`device_type`),
  ADD KEY `status` (`status`),
  ADD KEY `sort` (`sort`);

--
-- 表的索引 `fa_appleidlist`
--
ALTER TABLE `fa_appleidlist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_area`
--
ALTER TABLE `fa_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `fa_attachment`
--
ALTER TABLE `fa_attachment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_auth_group`
--
ALTER TABLE `fa_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_auth_group_access`
--
ALTER TABLE `fa_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- 表的索引 `fa_auth_rule`
--
ALTER TABLE `fa_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`),
  ADD KEY `weigh` (`weigh`);

--
-- 表的索引 `fa_category`
--
ALTER TABLE `fa_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `fa_config`
--
ALTER TABLE `fa_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `fa_deviceslist`
--
ALTER TABLE `fa_deviceslist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kid_unique` (`kid`),
  ADD UNIQUE KEY `idx_fa_deviceslist_kid` (`kid`),
  ADD KEY `inx_udid` (`udid`),
  ADD KEY `inx_user` (`user`),
  ADD KEY `pname` (`pname`),
  ADD KEY `idx_fa_deviceslist_ud_id` (`udid`),
  ADD KEY `idx_fa_deviceslist_username` (`user`),
  ADD KEY `idx_fa_deviceslist_account_name` (`pname`);

--
-- 表的索引 `fa_deviceslist1`
--
ALTER TABLE `fa_deviceslist1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kid_unique` (`kid`),
  ADD KEY `inx_udid` (`udid`),
  ADD KEY `inx_user` (`user`),
  ADD KEY `pname` (`pname`);

--
-- 表的索引 `fa_deviceslist_bak`
--
ALTER TABLE `fa_deviceslist_bak`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `kid_unique` (`kid`) USING BTREE,
  ADD KEY `inx_udid` (`udid`) USING BTREE,
  ADD KEY `inx_user` (`user`) USING BTREE,
  ADD KEY `pname` (`pname`) USING BTREE,
  ADD KEY `tjtime` (`tjtime`) USING BTREE,
  ADD KEY `zt` (`zt`) USING BTREE,
  ADD KEY `deviceid` (`deviceid`) USING BTREE,
  ADD KEY `zspt` (`zspt`) USING BTREE;

--
-- 表的索引 `fa_device_add_biz_log`
--
ALTER TABLE `fa_device_add_biz_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_device_add_biz_log_duration_ms` (`duration_ms`),
  ADD KEY `idx_fa_device_add_biz_log_create_time` (`create_time`),
  ADD KEY `idx_fa_device_add_biz_log_user_id` (`user_id`),
  ADD KEY `idx_fa_device_add_biz_log_username` (`username`),
  ADD KEY `idx_fa_device_add_biz_log_ud_id` (`udid`),
  ADD KEY `idx_fa_device_add_biz_log_result_type` (`result_type`),
  ADD KEY `idx_fa_device_add_biz_log_kid` (`kid`);

--
-- 表的索引 `fa_device_management`
--
ALTER TABLE `fa_device_management`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `udid_unique` (`udid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `kami_id` (`kami_id`),
  ADD KEY `status` (`status`),
  ADD KEY `activation_time` (`activation_time`),
  ADD KEY `timelock_type` (`timelock_type`),
  ADD KEY `idx_expiration_time` (`expiration_time`),
  ADD KEY `idx_disable` (`disable`);

--
-- 表的索引 `fa_ems`
--
ALTER TABLE `fa_ems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `fa_enterprise_shared_cert`
--
ALTER TABLE `fa_enterprise_shared_cert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_enterprise_shared_cert_uploaded_by` (`uploaded_by`),
  ADD KEY `idx_fa_enterprise_shared_cert_create_time` (`create_time`),
  ADD KEY `idx_fa_enterprise_shared_cert_update_time` (`update_time`);

--
-- 表的索引 `fa_failed_tasks`
--
ALTER TABLE `fa_failed_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_interface` (`interface_name`),
  ADD KEY `idx_created` (`created_at`);

--
-- 表的索引 `fa_help_article`
--
ALTER TABLE `fa_help_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_help_article_category_id` (`category_id`),
  ADD KEY `idx_fa_help_article_deleted_at` (`deleted_at`);

--
-- 表的索引 `fa_help_article_category`
--
ALTER TABLE `fa_help_article_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_help_article_category_deleted_at` (`deleted_at`);

--
-- 表的索引 `fa_invite_rebate_log`
--
ALTER TABLE `fa_invite_rebate_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_invite_rebate_log_inviter_name` (`inviter_name`),
  ADD KEY `idx_fa_invite_rebate_log_invitee_id` (`invitee_id`),
  ADD KEY `idx_fa_invite_rebate_log_invitee_name` (`invitee_name`),
  ADD KEY `idx_fa_invite_rebate_log_order_no` (`order_no`),
  ADD KEY `idx_fa_invite_rebate_log_inviter_id` (`inviter_id`);

--
-- 表的索引 `fa_invite_withdraw`
--
ALTER TABLE `fa_invite_withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_invite_withdraw_user_id` (`user_id`),
  ADD KEY `idx_fa_invite_withdraw_username` (`username`),
  ADD KEY `idx_fa_invite_withdraw_status` (`status`);

--
-- 表的索引 `fa_kami`
--
ALTER TABLE `fa_kami`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_timelock_type` (`timelock_type`),
  ADD KEY `idx_fa_kami_code` (`kami`),
  ADD KEY `idx_fa_kami_user_id` (`uid`);

--
-- 表的索引 `fa_notice`
--
ALTER TABLE `fa_notice`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`to_id`) USING BTREE;

--
-- 表的索引 `fa_notice_admin_mptemplate`
--
ALTER TABLE `fa_notice_admin_mptemplate`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `fa_notice_event`
--
ALTER TABLE `fa_notice_event`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `event` (`event`) USING HASH;

--
-- 表的索引 `fa_notice_template`
--
ALTER TABLE `fa_notice_template`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `fa_paylist`
--
ALTER TABLE `fa_paylist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_poster_template`
--
ALTER TABLE `fa_poster_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_poster_template_layout_key` (`layout_key`);

--
-- 表的索引 `fa_pre_deduct`
--
ALTER TABLE `fa_pre_deduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_udid` (`udid`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_expire_time` (`expire_time`),
  ADD KEY `idx_log_id` (`log_id`);

--
-- 表的索引 `fa_request_log`
--
ALTER TABLE `fa_request_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_request_log_method` (`method`),
  ADD KEY `idx_fa_request_log_path` (`path`),
  ADD KEY `idx_fa_request_log_client_ip` (`client_ip`),
  ADD KEY `idx_fa_request_log_status_code` (`status_code`),
  ADD KEY `idx_fa_request_log_app_code` (`app_code`),
  ADD KEY `idx_fa_request_log_result_type` (`result_type`),
  ADD KEY `idx_fa_request_log_duration_ms` (`duration_ms`),
  ADD KEY `idx_fa_request_log_create_time` (`create_time`);

--
-- 表的索引 `fa_signlist`
--
ALTER TABLE `fa_signlist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_signtool`
--
ALTER TABLE `fa_signtool`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_signtool_short_site` (`short_site`),
  ADD KEY `idx_fa_signtool_user` (`user`);

--
-- 表的索引 `fa_signtool_timede`
--
ALTER TABLE `fa_signtool_timede`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- 表的索引 `fa_sms`
--
ALTER TABLE `fa_sms`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_softwaresource_apps`
--
ALTER TABLE `fa_softwaresource_apps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_source_id` (`source_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_weigh` (`weigh`),
  ADD KEY `idx_fa_softwaresource_apps_user_id` (`user_id`),
  ADD KEY `idx_fa_softwaresource_apps_source_id` (`source_id`);

--
-- 表的索引 `fa_softwaresource_black`
--
ALTER TABLE `fa_softwaresource_black`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_source_id` (`source_id`),
  ADD KEY `idx_udid` (`udid`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_fa_softwaresource_black_user_id` (`user_id`),
  ADD KEY `idx_fa_softwaresource_black_source_id` (`source_id`);

--
-- 表的索引 `fa_softwaresource_config`
--
ALTER TABLE `fa_softwaresource_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_fa_softwaresource_config_user_id` (`user_id`);

--
-- 表的索引 `fa_softwaresource_kami`
--
ALTER TABLE `fa_softwaresource_kami`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_source_id` (`source_id`),
  ADD KEY `idx_kami` (`kami`),
  ADD KEY `idx_udid` (`udid`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_fa_softwaresource_kami_user_id` (`user_id`),
  ADD KEY `idx_fa_softwaresource_kami_source_id` (`source_id`),
  ADD KEY `idx_fa_softwaresource_kami_kami` (`kami`);

--
-- 表的索引 `fa_softwaresource_monitor`
--
ALTER TABLE `fa_softwaresource_monitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_source_id` (`source_id`),
  ADD KEY `idx_udid` (`udid`),
  ADD KEY `idx_fa_softwaresource_monitor_user_id` (`user_id`),
  ADD KEY `idx_fa_softwaresource_monitor_source_id` (`source_id`);

--
-- 表的索引 `fa_test`
--
ALTER TABLE `fa_test`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_third`
--
ALTER TABLE `fa_third`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `platform` (`platform`,`openid`) USING BTREE,
  ADD KEY `user_id` (`user_id`,`platform`) USING BTREE,
  ADD KEY `unionid` (`platform`,`unionid`) USING BTREE;

--
-- 表的索引 `fa_ticket`
--
ALTER TABLE `fa_ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_no` (`ticket_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_fa_ticket_status` (`status`),
  ADD KEY `idx_fa_ticket_create_time` (`create_time`),
  ADD KEY `idx_fa_ticket_update_time` (`update_time`),
  ADD KEY `idx_fa_ticket_ticket_no` (`ticket_no`),
  ADD KEY `idx_fa_ticket_user_id` (`user_id`),
  ADD KEY `idx_fa_ticket_username` (`username`);

--
-- 表的索引 `fa_ticket_reply`
--
ALTER TABLE `fa_ticket_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_fa_ticket_reply_ticket_id` (`ticket_id`),
  ADD KEY `idx_fa_ticket_reply_user_id` (`user_id`),
  ADD KEY `idx_fa_ticket_reply_username` (`username`),
  ADD KEY `idx_fa_ticket_reply_is_admin` (`is_admin`),
  ADD KEY `idx_fa_ticket_reply_create_time` (`create_time`);

--
-- 表的索引 `fa_timeout_tasks`
--
ALTER TABLE `fa_timeout_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_interface` (`interface_name`),
  ADD KEY `idx_created` (`created_at`);

--
-- 表的索引 `fa_udid_lock`
--
ALTER TABLE `fa_udid_lock`
  ADD PRIMARY KEY (`key`);

--
-- 表的索引 `fa_udid_requests`
--
ALTER TABLE `fa_udid_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_request_id` (`request_id`),
  ADD KEY `idx_udid` (`udid`);

--
-- 表的索引 `fa_user`
--
ALTER TABLE `fa_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_invite_code` (`invite_code`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `invite_code` (`invite_code`),
  ADD UNIQUE KEY `idx_fa_user_username` (`username`),
  ADD UNIQUE KEY `idx_fa_user_invite_code` (`invite_code`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`),
  ADD KEY `idx_openid` (`openid`),
  ADD KEY `idx_invited_by` (`invited_by`),
  ADD KEY `idx_fa_user_invited_by` (`invited_by`),
  ADD KEY `idx_fa_user_deleted_at` (`deleted_at`),
  ADD KEY `idx_fa_user_token` (`token`);

--
-- 表的索引 `fa_user_group`
--
ALTER TABLE `fa_user_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_user_log`
--
ALTER TABLE `fa_user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_create_time` (`create_time`);

--
-- 表的索引 `fa_user_money_log`
--
ALTER TABLE `fa_user_money_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fa_user_money_log_user_id` (`user_id`);

--
-- 表的索引 `fa_user_rule`
--
ALTER TABLE `fa_user_rule`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_user_score_log`
--
ALTER TABLE `fa_user_score_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `fa_user_token`
--
ALTER TABLE `fa_user_token`
  ADD PRIMARY KEY (`token`);

--
-- 表的索引 `fa_version`
--
ALTER TABLE `fa_version`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `fa_website`
--
ALTER TABLE `fa_website`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteurl` (`siteurl`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `fa_whitelist`
--
ALTER TABLE `fa_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_orders_order_no` (`order_no`),
  ADD KEY `idx_orders_user_id` (`user_id`);

--
-- 表的索引 `short_urls`
--
ALTER TABLE `short_urls`
  ADD PRIMARY KEY (`short_code`);

--
-- 表的索引 `sys_attachment`
--
ALTER TABLE `sys_attachment`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `md5` (`md5`) USING BTREE;

--
-- 表的索引 `sys_auth_rule`
--
ALTER TABLE `sys_auth_rule`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`) USING BTREE,
  ADD KEY `weigh` (`weigh`) USING BTREE;

--
-- 表的索引 `sys_config`
--
ALTER TABLE `sys_config`
  ADD PRIMARY KEY (`config_id`) USING BTREE,
  ADD UNIQUE KEY `uni_config_key` (`config_key`) USING BTREE;

--
-- 表的索引 `sys_dept`
--
ALTER TABLE `sys_dept`
  ADD PRIMARY KEY (`dept_id`) USING BTREE;

--
-- 表的索引 `sys_dict_data`
--
ALTER TABLE `sys_dict_data`
  ADD PRIMARY KEY (`dict_code`) USING BTREE;

--
-- 表的索引 `sys_dict_type`
--
ALTER TABLE `sys_dict_type`
  ADD PRIMARY KEY (`dict_id`) USING BTREE,
  ADD UNIQUE KEY `dict_type` (`dict_type`) USING BTREE;

--
-- 表的索引 `sys_job`
--
ALTER TABLE `sys_job`
  ADD PRIMARY KEY (`job_id`) USING BTREE,
  ADD UNIQUE KEY `invoke_target` (`invoke_target`) USING BTREE;

--
-- 表的索引 `sys_job_log`
--
ALTER TABLE `sys_job_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sys_login_log`
--
ALTER TABLE `sys_login_log`
  ADD PRIMARY KEY (`info_id`) USING BTREE;

--
-- 表的索引 `sys_notice`
--
ALTER TABLE `sys_notice`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `sys_notice_read`
--
ALTER TABLE `sys_notice_read`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `notice_id` (`notice_id`,`user_id`) USING BTREE;

--
-- 表的索引 `sys_oper_log`
--
ALTER TABLE `sys_oper_log`
  ADD PRIMARY KEY (`oper_id`) USING BTREE;

--
-- 表的索引 `sys_post`
--
ALTER TABLE `sys_post`
  ADD PRIMARY KEY (`post_id`) USING BTREE;

--
-- 表的索引 `sys_role`
--
ALTER TABLE `sys_role`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- 表的索引 `user_apple_accounts`
--
ALTER TABLE `user_apple_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_apple_accounts_user_id` (`user_id`);

--
-- 表的索引 `user_o_auths`
--
ALTER TABLE `user_o_auths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_o_auths_user_id` (`user_id`),
  ADD KEY `idx_user_o_auths_platform` (`platform`),
  ADD KEY `idx_user_o_auths_social_uid` (`social_uid`);

--
-- 表的索引 `wechat_config`
--
ALTER TABLE `wechat_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_group_name` (`name`,`group`);

--
-- 表的索引 `wechat_fans`
--
ALTER TABLE `wechat_fans`
  ADD PRIMARY KEY (`fans_id`);

--
-- 表的索引 `wechat_menu`
--
ALTER TABLE `wechat_menu`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wechat_news`
--
ALTER TABLE `wechat_news`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wechat_reply`
--
ALTER TABLE `wechat_reply`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `wechat_template`
--
ALTER TABLE `wechat_template`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `agent_themes`
--
ALTER TABLE `agent_themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用表AUTO_INCREMENT `apple_accounts`
--
ALTER TABLE `apple_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `device_backup_profiles`
--
ALTER TABLE `device_backup_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `email_codes`
--
ALTER TABLE `email_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_admin`
--
ALTER TABLE `fa_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_admin_log`
--
ALTER TABLE `fa_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_agentapplelist`
--
ALTER TABLE `fa_agentapplelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_agentsite`
--
ALTER TABLE `fa_agentsite`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_apihost`
--
ALTER TABLE `fa_apihost`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_api_interface`
--
ALTER TABLE `fa_api_interface`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_appleidlist`
--
ALTER TABLE `fa_appleidlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_area`
--
ALTER TABLE `fa_area`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_attachment`
--
ALTER TABLE `fa_attachment`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_auth_group`
--
ALTER TABLE `fa_auth_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_auth_rule`
--
ALTER TABLE `fa_auth_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_category`
--
ALTER TABLE `fa_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_config`
--
ALTER TABLE `fa_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_deviceslist`
--
ALTER TABLE `fa_deviceslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_deviceslist1`
--
ALTER TABLE `fa_deviceslist1`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_deviceslist_bak`
--
ALTER TABLE `fa_deviceslist_bak`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_device_add_biz_log`
--
ALTER TABLE `fa_device_add_biz_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_device_management`
--
ALTER TABLE `fa_device_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID';

--
-- 使用表AUTO_INCREMENT `fa_ems`
--
ALTER TABLE `fa_ems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_enterprise_shared_cert`
--
ALTER TABLE `fa_enterprise_shared_cert`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_failed_tasks`
--
ALTER TABLE `fa_failed_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_help_article`
--
ALTER TABLE `fa_help_article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_help_article_category`
--
ALTER TABLE `fa_help_article_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_invite_rebate_log`
--
ALTER TABLE `fa_invite_rebate_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_invite_withdraw`
--
ALTER TABLE `fa_invite_withdraw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_kami`
--
ALTER TABLE `fa_kami`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_notice`
--
ALTER TABLE `fa_notice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_notice_admin_mptemplate`
--
ALTER TABLE `fa_notice_admin_mptemplate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_notice_event`
--
ALTER TABLE `fa_notice_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_notice_template`
--
ALTER TABLE `fa_notice_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_paylist`
--
ALTER TABLE `fa_paylist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_poster_template`
--
ALTER TABLE `fa_poster_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_pre_deduct`
--
ALTER TABLE `fa_pre_deduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID';

--
-- 使用表AUTO_INCREMENT `fa_request_log`
--
ALTER TABLE `fa_request_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_signlist`
--
ALTER TABLE `fa_signlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_signtool`
--
ALTER TABLE `fa_signtool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_signtool_timede`
--
ALTER TABLE `fa_signtool_timede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID';

--
-- 使用表AUTO_INCREMENT `fa_sms`
--
ALTER TABLE `fa_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_softwaresource_apps`
--
ALTER TABLE `fa_softwaresource_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_softwaresource_black`
--
ALTER TABLE `fa_softwaresource_black`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_softwaresource_config`
--
ALTER TABLE `fa_softwaresource_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_softwaresource_kami`
--
ALTER TABLE `fa_softwaresource_kami`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_softwaresource_monitor`
--
ALTER TABLE `fa_softwaresource_monitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_test`
--
ALTER TABLE `fa_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_third`
--
ALTER TABLE `fa_third`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_ticket`
--
ALTER TABLE `fa_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_ticket_reply`
--
ALTER TABLE `fa_ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_timeout_tasks`
--
ALTER TABLE `fa_timeout_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_udid_requests`
--
ALTER TABLE `fa_udid_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_user`
--
ALTER TABLE `fa_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_user_group`
--
ALTER TABLE `fa_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_user_log`
--
ALTER TABLE `fa_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID';

--
-- 使用表AUTO_INCREMENT `fa_user_money_log`
--
ALTER TABLE `fa_user_money_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_user_rule`
--
ALTER TABLE `fa_user_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_user_score_log`
--
ALTER TABLE `fa_user_score_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_version`
--
ALTER TABLE `fa_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `fa_website`
--
ALTER TABLE `fa_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `fa_whitelist`
--
ALTER TABLE `fa_whitelist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sys_attachment`
--
ALTER TABLE `sys_attachment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件ID';

--
-- 使用表AUTO_INCREMENT `sys_auth_rule`
--
ALTER TABLE `sys_auth_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sys_config`
--
ALTER TABLE `sys_config`
  MODIFY `config_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '参数主键';

--
-- 使用表AUTO_INCREMENT `sys_dept`
--
ALTER TABLE `sys_dept`
  MODIFY `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id';

--
-- 使用表AUTO_INCREMENT `sys_dict_data`
--
ALTER TABLE `sys_dict_data`
  MODIFY `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码';

--
-- 使用表AUTO_INCREMENT `sys_dict_type`
--
ALTER TABLE `sys_dict_type`
  MODIFY `dict_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '字典主键';

--
-- 使用表AUTO_INCREMENT `sys_job`
--
ALTER TABLE `sys_job`
  MODIFY `job_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '任务ID';

--
-- 使用表AUTO_INCREMENT `sys_job_log`
--
ALTER TABLE `sys_job_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键';

--
-- 使用表AUTO_INCREMENT `sys_login_log`
--
ALTER TABLE `sys_login_log`
  MODIFY `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID';

--
-- 使用表AUTO_INCREMENT `sys_notice`
--
ALTER TABLE `sys_notice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `sys_notice_read`
--
ALTER TABLE `sys_notice_read`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id';

--
-- 使用表AUTO_INCREMENT `sys_oper_log`
--
ALTER TABLE `sys_oper_log`
  MODIFY `oper_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志主键';

--
-- 使用表AUTO_INCREMENT `sys_post`
--
ALTER TABLE `sys_post`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '岗位ID';

--
-- 使用表AUTO_INCREMENT `sys_role`
--
ALTER TABLE `sys_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `user_apple_accounts`
--
ALTER TABLE `user_apple_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `user_o_auths`
--
ALTER TABLE `user_o_auths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wechat_config`
--
ALTER TABLE `wechat_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wechat_fans`
--
ALTER TABLE `wechat_fans`
  MODIFY `fans_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wechat_menu`
--
ALTER TABLE `wechat_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wechat_news`
--
ALTER TABLE `wechat_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wechat_reply`
--
ALTER TABLE `wechat_reply`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `wechat_template`
--
ALTER TABLE `wechat_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `fa_help_article`
--
ALTER TABLE `fa_help_article`
  ADD CONSTRAINT `fk_fa_help_article_category` FOREIGN KEY (`category_id`) REFERENCES `fa_help_article_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
