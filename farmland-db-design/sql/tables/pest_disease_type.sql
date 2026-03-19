-- ============================================
-- 表: pest_disease_type
-- 字段数: 3
-- 修改: 2026-03-18 完善字段注释
-- ============================================
CREATE TABLE IF NOT EXISTS `pest_disease_type` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT '病虫害类型名称',
  `type` TINYINT NOT NULL COMMENT '类型：1-虫害，2-病害，3-草害',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_pest_disease_type_type` CHECK (type IN (1, 2, 3))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='病虫害类型字典表';
