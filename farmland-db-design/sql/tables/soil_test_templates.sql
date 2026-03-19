-- ============================================
-- 表: soil_test_templates
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `soil_test_templates` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '检测模板名称',
  `description` TEXT DEFAULT NULL COMMENT '模板描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='soil_test_templates表';
