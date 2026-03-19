-- ============================================
-- 表: agent_farmer_service
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `agent_farmer_service` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `agent_id` BIGINT NOT NULL COMMENT '服务商用户ID，关联user表',
  `farmer_id` BIGINT NOT NULL COMMENT '农户用户ID，关联user表',
  PRIMARY KEY (`id`),
  INDEX `idx_agent_id` (`agent_id`),
  INDEX `idx_farmer_id` (`farmer_id`),
  CONSTRAINT `fk_agent_farmer_service_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_agent_farmer_service_farmer_id` FOREIGN KEY (`farmer_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='agent_farmer_service表';
