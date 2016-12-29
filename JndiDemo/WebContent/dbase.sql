-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        5.7.15-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 dbase 的数据库结构
DROP DATABASE IF EXISTS `dbase`;
CREATE DATABASE IF NOT EXISTS `dbase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbase`;

-- 导出  表 dbase.article 结构
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  dbase.article 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
REPLACE INTO `article` (`aid`, `title`, `content`, `uid`) VALUES
	(1, '文章1', '文章1的正文', 1),
	(2, '文章2', '文章2的正文', 1),
	(3, '文章3', '文章3的正文', 3),
	(4, '文章4', '文章4的正文', 4),
	(5, '文章5', '文章5的正文', 5);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- 导出  表 dbase.blog 结构
DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 正在导出表  dbase.blog 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
REPLACE INTO `blog` (`bid`, `title`, `content`, `uid`) VALUES
	(1, '日志1', '日志1的正文', 1),
	(2, '文章2', '文章2的正文', 1),
	(3, '日志3', '日志3的正文', 3),
	(4, '文章4', '文章4的正文', 4),
	(5, '日志5', '日志5的正文', 5);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- 导出  表 dbase.cv 结构
DROP TABLE IF EXISTS `cv`;
CREATE TABLE IF NOT EXISTS `cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `age` int(11) DEFAULT NULL,
  `mobile` bigint(11) NOT NULL DEFAULT '13965001234' COMMENT '手机号码',
  `city` varchar(64) DEFAULT '安徽',
  `num` int(11) NOT NULL DEFAULT '5',
  `weight` decimal(5,2) DEFAULT NULL,
  `height` decimal(3,2) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `intro` text COMMENT '自我介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='测试用表';

-- 正在导出表  dbase.cv 的数据：~17 rows (大约)
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
REPLACE INTO `cv` (`id`, `name`, `age`, `mobile`, `city`, `num`, `weight`, `height`, `address`, `intro`) VALUES
	(1, 'zhangsan', 25, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(2, 'lisi', 26, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(3, 'wangwu', 30, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(4, 'zhaosi', 35, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(5, 'woniu', 19, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(6, 'laowang', 28, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(7, 'laoli', 29, 13965001234, 'nj', 25, NULL, NULL, NULL, NULL),
	(8, 'laosong', 30, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(9, '张三丰', 120, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(10, 'laowang', 28, 13965001234, 'hf', 25, NULL, NULL, NULL, NULL),
	(11, '老吕', 28, 13900001111, 'bj', 25, NULL, NULL, NULL, NULL),
	(12, '吕老', 29, 13900001111, 'bj', 25, NULL, NULL, NULL, NULL),
	(13, '大老吕', 30, 13622221111, 'xa', 25, NULL, NULL, NULL, NULL),
	(14, '大吕老', 28, 13244445555, 'xa', 25, NULL, NULL, NULL, NULL),
	(15, '吕大老吕', 28, 1311116666, 'nj', 25, NULL, NULL, NULL, NULL),
	(16, 'zhansanfen', 300, 13605513838, '安徽', 5, NULL, NULL, NULL, NULL),
	(18, 'xiaozhao', 26, 13600001111, '安徽', 5, NULL, NULL, NULL, NULL),
	(20, 'xiaozhao01', 26, 13600001111, '安徽', 15, NULL, NULL, NULL, NULL),
	(21, 'xiaozhao02', 26, 13600001111, '安徽', 25, NULL, NULL, NULL, NULL),
	(22, 'xiaozhao03', 26, 13600001111, '安徽', 35, NULL, NULL, NULL, NULL),
	(23, 'xiaozhao04', 26, 13600001111, '安徽', 45, NULL, NULL, NULL, NULL),
	(24, 'xiaozhao05', 26, 13600001111, '安徽', 55, NULL, NULL, NULL, NULL),
	(83, 'xiaozhao11', 26, 13600001111, '安徽', 15, NULL, NULL, NULL, NULL),
	(84, 'xiaozhao12', 26, 13600001111, '安徽', 25, NULL, NULL, NULL, NULL),
	(85, 'xiaozhao13', 26, 13600001111, '安徽', 35, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;

-- 导出  表 dbase.edu 结构
DROP TABLE IF EXISTS `edu`;
CREATE TABLE IF NOT EXISTS `edu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cv_id` int(11) NOT NULL DEFAULT '0' COMMENT 'CV ID',
  `from_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '开始日期',
  `to_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '结束日期',
  `degree` tinyint(1) NOT NULL DEFAULT '0',
  `school_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cv_id` (`cv_id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `edu_ibfk_1` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`) ON DELETE CASCADE,
  CONSTRAINT `edu_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  dbase.edu 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `edu` DISABLE KEYS */;
REPLACE INTO `edu` (`id`, `cv_id`, `from_date`, `to_date`, `degree`, `school_id`) VALUES
	(1, 1, '1980-07-05', '1985-08-09', 1, 1),
	(2, 14, '1985-07-05', '1985-08-09', 1, 1),
	(3, 4, '1980-07-15', '1985-08-19', 0, 3);
/*!40000 ALTER TABLE `edu` ENABLE KEYS */;

-- 导出  表 dbase.school 结构
DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  dbase.school 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
REPLACE INTO `school` (`id`, `name`, `address`) VALUES
	(1, '168', '经开区'),
	(2, '34', '长江路'),
	(3, '28', 'XXXX'),
	(4, '1', '滨湖区'),
	(5, '46', '滨湖区');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;

-- 导出  表 dbase.transaction_test 结构
DROP TABLE IF EXISTS `transaction_test`;
CREATE TABLE IF NOT EXISTS `transaction_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  dbase.transaction_test 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `transaction_test` DISABLE KEYS */;
REPLACE INTO `transaction_test` (`id`, `name`) VALUES
	(2, 'andy'),
	(3, 'tom'),
	(4, 'jack'),
	(8, 'fish'),
	(9, 'tree');
/*!40000 ALTER TABLE `transaction_test` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
