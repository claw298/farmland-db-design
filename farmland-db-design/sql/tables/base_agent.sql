-- ============================================
-- 表: base_agent
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `base_agent` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `base_id` BIGINT NOT NULL COMMENT '基地ID，关联base表',
  `agent_id` BIGINT NOT NULL COMMENT '服务商用户ID，关联user表',
  PRIMARY KEY (`id`),
  INDEX `idx_base_id` (`base_id`),
  INDEX `idx_agent_id` (`agent_id`),
  CONSTRAINT `fk_base_agent_base_id` FOREIGN KEY (`base_id`) REFERENCES `base` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_base_agent_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='base_agent表';
