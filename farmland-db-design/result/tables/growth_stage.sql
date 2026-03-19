-- ============================================
-- 表: growth_stage
-- 字段数: 2
-- ============================================
CREATE TABLE IF NOT EXISTS `growth_stage` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '生长阶段名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='growth_stage表';
