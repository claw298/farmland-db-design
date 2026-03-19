-- ============================================
-- 表: role
-- 字段数: 5
-- ============================================
CREATE TABLE IF NOT EXISTS `role` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `code` VARCHAR(100) DEFAULT NULL COMMENT '角色代码/编码',
  `role_name` VARCHAR(100) NOT NULL COMMENT '角色名称',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_role_status` CHECK (status IN (0, 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='role表';
