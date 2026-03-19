-- ============================================
-- 表: organization
-- 字段数: 5
-- ============================================
CREATE TABLE IF NOT EXISTS `organization` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '组织名称',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `phone` VARCHAR(20) DEFAULT NULL COMMENT '联系电话',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_organization_status` CHECK (status IN (0, 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='organization表';
