-- ============================================
-- 表: sensor_plot
-- 字段数: 4
-- ============================================
CREATE TABLE IF NOT EXISTS `sensor_plot` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `sensor_id` BIGINT NOT NULL COMMENT '传感器ID，关联sensor表',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `status` TINYINT DEFAULT 1 COMMENT '关联状态：0-未绑定，1-已绑定',
  PRIMARY KEY (`id`),
  INDEX `idx_sensor_id` (`sensor_id`),
  INDEX `idx_plot_id` (`plot_id`),
  CONSTRAINT `fk_sensor_plot_sensor_id` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_sensor_plot_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_sensor_plot_status` CHECK (status IN (0, 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='sensor_plot表';
