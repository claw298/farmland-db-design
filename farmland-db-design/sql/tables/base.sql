-- ============================================
-- 表: base
-- 字段数: 6
-- ============================================
CREATE TABLE IF NOT EXISTS `base` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '基地名称',
  `address` VARCHAR(255) DEFAULT NULL COMMENT '基地地址',
  `map` VARCHAR(500) DEFAULT NULL COMMENT '地图坐标信息（经纬度或JSON）',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_base_status` CHECK (status IN (0, 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='base表';
