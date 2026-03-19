-- ============================================
-- 表: base_plot
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `base_plot` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `base_id` BIGINT NOT NULL COMMENT '基地ID，关联base表',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  PRIMARY KEY (`id`),
  INDEX `idx_base_id` (`base_id`),
  INDEX `idx_plot_id` (`plot_id`),
  CONSTRAINT `fk_base_plot_base_id` FOREIGN KEY (`base_id`) REFERENCES `base` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_base_plot_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='base_plot表';
