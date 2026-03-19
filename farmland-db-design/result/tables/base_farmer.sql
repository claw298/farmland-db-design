-- ============================================
-- 表: base_farmer
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `base_farmer` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `base_id` BIGINT NOT NULL COMMENT '基地ID，关联base表',
  `farmer_id` BIGINT NOT NULL COMMENT '农户用户ID，关联user表',
  PRIMARY KEY (`id`),
  INDEX `idx_base_id` (`base_id`),
  INDEX `idx_farmer_id` (`farmer_id`),
  CONSTRAINT `fk_base_farmer_base_id` FOREIGN KEY (`base_id`) REFERENCES `base` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_base_farmer_farmer_id` FOREIGN KEY (`farmer_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='base_farmer表';
