-- ============================================
-- 表: user
-- 字段数: 10
-- 修改: 2026-03-18 添加 user_id 正数约束
-- ============================================
CREATE TABLE IF NOT EXISTS `user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `user_id` BIGINT NOT NULL COMMENT '用户账号（唯一）',
  `user_name` VARCHAR(100) NOT NULL COMMENT '用户名/登录名',
  `phone` VARCHAR(20) DEFAULT NULL COMMENT '手机号码',
  `avatar_url` VARCHAR(500) DEFAULT NULL COMMENT '头像URL地址',
  `gender` TINYINT DEFAULT NULL COMMENT '性别：0-未知，1-男，2-女',
  `name` VARCHAR(100) DEFAULT NULL COMMENT '用户真实姓名',
  `password` VARCHAR(255) DEFAULT NULL COMMENT '登录密码',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_id` (`user_id`),
  CONSTRAINT `chk_user_gender` CHECK (gender IN (0, 1, 2)),
  CONSTRAINT `chk_user_status` CHECK (status IN (0, 1)),
  CONSTRAINT `chk_user_id_positive` CHECK (user_id > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';
