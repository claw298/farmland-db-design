-- ============================================
-- 表: growing_season_plot
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `growing_season_plot` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `growing_season_id` BIGINT NOT NULL COMMENT '生长季ID，关联growing_season表',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  PRIMARY KEY (`id`),
  INDEX `idx_growing_season_id` (`growing_season_id`),
  INDEX `idx_plot_id` (`plot_id`),
  CONSTRAINT `fk_growing_season_plot_growing_season_id` FOREIGN KEY (`growing_season_id`) REFERENCES `growing_season` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_growing_season_plot_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='growing_season_plot表';
