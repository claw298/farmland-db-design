-- ============================================
-- 表: growing_season
-- 字段数: 7
-- 修改: 2026-03-18 添加结束时间约束
-- ============================================
CREATE TABLE IF NOT EXISTS `growing_season` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '生长季名称',
  `crop_name` VARCHAR(100) DEFAULT NULL COMMENT '具体作物名称',
  `start_time` DATETIME DEFAULT NULL COMMENT '开始时间',
  `end_time` DATETIME DEFAULT NULL COMMENT '结束时间',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_growing_season_status` CHECK (status IN (0, 1)),
  CONSTRAINT `chk_growing_season_time` CHECK (end_time IS NULL OR end_time > start_time)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='生长季信息表';
