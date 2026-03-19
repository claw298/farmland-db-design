-- ============================================
-- 表: user_organization
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `user_organization` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `user_id` BIGINT NOT NULL COMMENT '用户ID，关联user表',
  `org_id` BIGINT NOT NULL COMMENT '组织ID，关联organization表',
  PRIMARY KEY (`id`),
  INDEX `idx_user_id` (`user_id`),
  INDEX `idx_org_id` (`org_id`),
  CONSTRAINT `fk_user_organization_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_user_organization_org_id` FOREIGN KEY (`org_id`) REFERENCES `organization` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='user_organization表';
