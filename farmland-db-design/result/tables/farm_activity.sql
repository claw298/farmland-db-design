-- ============================================
-- 表: farm_activity
-- 字段数: 7
-- ============================================
CREATE TABLE IF NOT EXISTS `farm_activity` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `time` DATETIME NOT NULL COMMENT '活动时间',
  `type_id` BIGINT NOT NULL COMMENT '活动类型ID，关联activity_type表',
  `topic` VARCHAR(100) DEFAULT NULL COMMENT '活动主题',
  `basis` JSON DEFAULT NULL COMMENT '活动依据',
  `content` JSON DEFAULT NULL COMMENT '活动内容描述',
  PRIMARY KEY (`id`),
  INDEX `idx_plot_id` (`plot_id`),
  INDEX `idx_type_id` (`type_id`),
  INDEX `idx_plot_id_time` (`plot_id`, `time`),
  CONSTRAINT `fk_farm_activity_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_farm_activity_type_id` FOREIGN KEY (`type_id`) REFERENCES `activity_type` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='farm_activity表';
