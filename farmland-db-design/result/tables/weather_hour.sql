-- ============================================
-- 表: weather_hour
-- 字段数: 9
-- ============================================
CREATE TABLE IF NOT EXISTS `weather_hour` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `time` DATETIME NOT NULL COMMENT '时间（每小时数据）',
  `t2m` DECIMAL(5,2) DEFAULT NULL COMMENT '温度（摄氏度）',
  `tp` DECIMAL(6,2) DEFAULT NULL COMMENT '降水量（毫米）',
  `ws10m` DECIMAL(5,2) DEFAULT NULL COMMENT '风速（米/秒）',
  `rh2m` DECIMAL(5,2) DEFAULT NULL COMMENT '相对湿度（%）',
  `query_date` DATETIME DEFAULT NULL COMMENT '数据查询日期',
  `ssrd` DECIMAL(10,2) DEFAULT NULL COMMENT '太阳辐射（瓦特/平方米）',
  PRIMARY KEY (`id`),
  INDEX `idx_plot_id` (`plot_id`),
  INDEX `idx_plot_id_time` (`plot_id`, `time`),
  CONSTRAINT `fk_weather_hour_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='weather_hour表';
