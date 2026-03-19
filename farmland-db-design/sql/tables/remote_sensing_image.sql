-- ============================================
-- 表: remote_sensing_image
-- 字段数: 5
-- ============================================
CREATE TABLE IF NOT EXISTS `remote_sensing_image` (
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `plot_id` BIGINT NOT NULL COMMENT '地块ID，关联plot表',
  `time` DATETIME NOT NULL COMMENT '遥感影像拍摄时间',
  `type` TINYINT DEFAULT NULL COMMENT '影像类型：1-可见光，2-红外，3-多光谱',
  `image` VARCHAR(500) DEFAULT NULL COMMENT '遥感影像文件路径/URL',
  PRIMARY KEY (`id`),
  INDEX `idx_plot_id` (`plot_id`),
  INDEX `idx_plot_id_time` (`plot_id`, `time`),
  CONSTRAINT `fk_remote_sensing_image_plot_id` FOREIGN KEY (`plot_id`) REFERENCES `plot` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_remote_sensing_image_type` CHECK (type IN (1, 2, 3))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='remote_sensing_image表';
