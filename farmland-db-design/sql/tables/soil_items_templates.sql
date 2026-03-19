-- ============================================
-- 表: soil_items_templates
-- 字段数: 3
-- ============================================
CREATE TABLE IF NOT EXISTS `soil_items_templates` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `template_id` BIGINT NOT NULL COMMENT '模板ID，关联soil_test_templates表',
  `item_id` BIGINT NOT NULL COMMENT '检测项目ID，关联soil_test_items表',
  PRIMARY KEY (`id`),
  INDEX `idx_template_id` (`template_id`),
  INDEX `idx_item_id` (`item_id`),
  CONSTRAINT `fk_soil_items_templates_template_id` FOREIGN KEY (`template_id`) REFERENCES `soil_test_templates` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_soil_items_templates_item_id` FOREIGN KEY (`item_id`) REFERENCES `soil_test_items` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='soil_items_templates表';
