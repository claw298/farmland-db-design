-- ============================================
-- 表: sensor
-- 字段数: 5
-- ============================================
CREATE TABLE IF NOT EXISTS `sensor` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) DEFAULT NULL COMMENT '传感器名称',
  `sensor_id` BIGINT NOT NULL COMMENT '传感器设备ID',
  `sensor_model` VARCHAR(255) DEFAULT NULL COMMENT '传感器型号',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-离线，1-在线，2-故障',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_sensor_status` CHECK (status IN (0, 1, 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='sensor表';
