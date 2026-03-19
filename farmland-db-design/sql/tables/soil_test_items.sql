-- ============================================
-- 表: soil_test_items
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `soil_test_items` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '土壤检测项目名称',
  `unit` VARCHAR(20) DEFAULT NULL COMMENT '单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='soil_test_items表';
