-- ============================================
-- 表: weather_daily
-- 字段数: 9
-- ============================================
CREATE TABLE IF NOT EXISTS `weather_daily` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `time` DATETIME NOT NULL COMMENT '日期（每日数据）',
  `t2m_max` DECIMAL(5,2) DEFAULT NULL COMMENT '最高温度（摄氏度）',
  `t2x_min` DECIMAL(5,2) DEFAULT NULL COMMENT '最低温度（摄氏度）',
  `tp_sum` DECIMAL(6,2) DEFAULT NULL COMMENT '日降水量（毫米）',
  `rh2m_avg` DECIMAL(5,2) DEFAULT NULL COMMENT '平均相对湿度（%）',
  `ws10m_max` DECIMAL(5,2) DEFAULT NULL COMMENT '最大风速（米/秒）',
  `query_date` DATETIME DEFAULT NULL COMMENT '数据查询日期',
  PRIMARY KEY (`id`),
  INDEX `idx_plot_id` (`plot_id`),
  INDEX `idx_plot_id_time` (`plot_id`, `time`),
  CONSTRAINT `fk_weather_daily_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='weather_daily表';
