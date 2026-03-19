-- ============================================
-- 表: plot
-- 字段数: 8
-- 修改: 2026-03-18 添加面积 CHECK 约束
-- ============================================
CREATE TABLE IF NOT EXISTS `plot` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '地块名称',
  `area_mu` DECIMAL(10,2) DEFAULT NULL COMMENT '地块面积（亩）',
  `address` VARCHAR(255) DEFAULT NULL COMMENT '地块地址',
  `map` VARCHAR(500) DEFAULT NULL COMMENT '地图坐标信息（经纬度或JSON）',
  `soil_capacity` DECIMAL(6,3) DEFAULT NULL COMMENT '土壤容量（克/立方厘米）',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_plot_status` CHECK (status IN (0, 1)),
  CONSTRAINT `chk_plot_area_positive` CHECK (area_mu IS NULL OR area_mu > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地块信息表';
