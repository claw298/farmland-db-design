-- ============================================
-- 表: pest_disease_type
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `pest_disease_type` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` VARCHAR(100) NOT NULL COMMENT 'name字段',
  `type` TINYINT NOT NULL COMMENT 'type字段',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_pest_disease_type_type` CHECK (type IN (1, 2, 3))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='pest_disease_type表';
