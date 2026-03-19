-- ============================================
-- 表: alert
-- 字段数: 7
-- ============================================
CREATE TABLE IF NOT EXISTS `alert` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `time` DATETIME NOT NULL COMMENT '告警发生时间',
  `level_id` BIGINT NOT NULL COMMENT '告警级别ID，关联alert_level表',
  `type_id` BIGINT NOT NULL COMMENT '告警类型ID，关联alert_type表',
  `content` JSON DEFAULT NULL COMMENT '告警内容描述',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-未处理，1-已处理，2-已忽略',
  PRIMARY KEY (`id`),
  INDEX `idx_plot_id` (`plot_id`),
  INDEX `idx_level_id` (`level_id`),
  INDEX `idx_type_id` (`type_id`),
  INDEX `idx_plot_id_status` (`plot_id`, `status`),
  INDEX `idx_plot_id_time` (`plot_id`, `time`),
  CONSTRAINT `fk_alert_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_alert_level_id` FOREIGN KEY (`level_id`) REFERENCES `alert_level` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_alert_type_id` FOREIGN KEY (`type_id`) REFERENCES `alert_type` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_alert_status` CHECK (status IN (0, 1, 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='alert表';
