# 创建数据库
CREATE DATABASE IF NOT db_kkuiloj;

# 使用数据库
USE db_kkuiloj;

# 创建表

## 用户表
CREATE TABLE IF NOT EXISTS tb_user(
	id BIGINT(10) PRIMARY KEY COMMENT "用户id",
	username VARCHAR(17) NOT NULL DEFAULT "-" COMMENT "用户名",
	password VARCHAR(100) NOT NULL COMMENT "用户密码",
	role ENUM("user", "admin") NOT NULL DEFAULT "user" COMMENT "用户权限",
	is_deleted UNSIGNED TINYINT(1) NOT NULL DEFAULT 0 COMMENT "是否逻辑删除(0：未删除 1：已删除)",
	created_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
	modified_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "最后一次修改时间" 
);