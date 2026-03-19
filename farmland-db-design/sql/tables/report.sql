-- ============================================
-- 表: report
-- 字段数: 7
-- ============================================
CREATE TABLE IF NOT EXISTS `report` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `time` DATETIME NOT NULL COMMENT '报告生成时间',
  `type_id` BIGINT NOT NULL COMMENT '报告类型ID，关联report_type表',
  `original_data` JSON DEFAULT NULL COMMENT '原始数据（JSON格式）',
  `analysis` JSON DEFAULT NULL COMMENT '分析结果（JSON格式）',
  `advice` JSON DEFAULT NULL COMMENT '建议内容（JSON格式）',
  PRIMARY KEY (`id`),
  INDEX `idx_plot_id` (`plot_id`),
  INDEX `idx_type_id` (`type_id`),
  INDEX `idx_plot_id_time` (`plot_id`, `time`),
  CONSTRAINT `fk_report_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_report_type_id` FOREIGN KEY (`type_id`) REFERENCES `report_type` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='report表';
