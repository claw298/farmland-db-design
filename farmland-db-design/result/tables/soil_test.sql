-- ============================================
-- 表: soil_test
-- 字段数: 5
-- ============================================
CREATE TABLE IF NOT EXISTS `soil_test` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `templates_id` BIGINT DEFAULT NULL COMMENT '检测模板ID，关联soil_test_templates表',
  `time` DATETIME NOT NULL COMMENT '检测时间',
  `data` JSON DEFAULT NULL COMMENT '检测数据（JSON格式）',
  PRIMARY KEY (`id`),
  INDEX `idx_plot_id` (`plot_id`),
  INDEX `idx_templates_id` (`templates_id`),
  INDEX `idx_plot_id_time` (`plot_id`, `time`),
  CONSTRAINT `fk_soil_test_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_soil_test_templates_id` FOREIGN KEY (`templates_id`) REFERENCES `soil_test_templates` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='soil_test表';
