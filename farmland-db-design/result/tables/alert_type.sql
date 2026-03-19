-- ============================================
-- 表: alert_type
-- 字段数: 2
-- ============================================
CREATE TABLE IF NOT EXISTS `alert_type` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '告警类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='alert_type表';
