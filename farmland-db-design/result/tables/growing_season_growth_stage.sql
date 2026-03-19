-- ============================================
-- 表: growing_season_growth_stage
-- 字段数: 6
-- ============================================
CREATE TABLE IF NOT EXISTS `growing_season_growth_stage` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `growing_season_id` BIGINT NOT NULL COMMENT '生长季ID，关联growing_season表',
  `growth_stage_id` BIGINT NOT NULL COMMENT '生长阶段ID，关联growth_stage表',
  `start_time` DATETIME DEFAULT NULL COMMENT '阶段开始时间',
  `end_time` DATETIME DEFAULT NULL COMMENT '阶段结束时间',
  `status` TINYINT DEFAULT 1 COMMENT '状态：0-未开始，1-进行中，2-已完成',
  PRIMARY KEY (`id`),
  INDEX `idx_growing_season_id` (`growing_season_id`),
  INDEX `idx_growth_stage_id` (`growth_stage_id`),
  CONSTRAINT `fk_growing_season_growth_stage_growing_season_id` FOREIGN KEY (`growing_season_id`) REFERENCES `growing_season` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_growing_season_growth_stage_growth_stage_id` FOREIGN KEY (`growth_stage_id`) REFERENCES `growth_stage` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_growing_season_growth_stage_status` CHECK (status IN (0, 1, 2))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='growing_season_growth_stage表';
