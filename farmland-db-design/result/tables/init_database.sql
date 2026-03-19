-- ============================================
-- 农田档案数据库 - 完整建库脚本
-- 生成时间: 2026-03-18
-- 版本: v2.0
-- 使用方式: 
--   mysql -h 127.0.0.1 -P 3306 -u remoteuser -p < init_database.sql
--   或
--   mysql -h 127.0.0.1 -P 3306 -u remoteuser -p farmland_test < tables/init_database.sql
-- ============================================

-- 创建数据库（如果不存在则删除重建）
DROP DATABASE IF EXISTS farmland;
CREATE DATABASE farmland CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE farmland;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ============================================
-- 第一层：无依赖的字典表和基础表
-- ============================================

-- 组织机构表
SOURCE organization.sql;

-- 用户表
SOURCE user.sql;

-- 角色表
SOURCE role.sql;

-- 权限表
SOURCE permission.sql;

-- 作物表
SOURCE crop.sql;

-- 生长阶段字典表
SOURCE growth_stage.sql;

-- 预警级别字典表
SOURCE alert_level.sql;

-- 预警类型字典表
SOURCE alert_type.sql;

-- 报表类型字典表
SOURCE report_type.sql;

-- 传感器类型字典表
SOURCE sensor_type.sql;

-- 土壤检测项目字典表
SOURCE soil_test_items.sql;

-- 土壤检测模板表
SOURCE soil_test_templates.sql;

-- 土壤检测项目-模板关联表
SOURCE soil_items_templates.sql;

-- 病虫害类型字典表
SOURCE pest_disease_type.sql;

-- 活动类型字典表
SOURCE activity_type.sql;

-- ============================================
-- 第二层：依赖第一层的业务表
-- ============================================

-- 基地表
SOURCE base.sql;

-- 地块表
SOURCE plot.sql;

-- 传感器表
SOURCE sensor.sql;

-- 日气象数据表
SOURCE weather_daily.sql;

-- 小时气象数据表
SOURCE weather_hour.sql;

-- 土壤检测表
SOURCE soil_test.sql;

-- 预警记录表
SOURCE alert.sql;

-- 报表表
SOURCE report.sql;

-- 生长季表
SOURCE growing_season.sql;

-- ============================================
-- 第三层：依赖第二层的关联表
-- ============================================

-- 基地-农户关联表
SOURCE base_farmer.sql;

-- 基地-智能体关联表
SOURCE base_agent.sql;

-- 生长季-作物关联表
SOURCE growing_season_crop.sql;

-- 生长季-生长阶段关联表
SOURCE growing_season_growth_stage.sql;

-- 生长季-地块关联表
SOURCE growing_season_plot.sql;

-- ============================================
-- 第四层：多对多关联表
-- ============================================

-- 基地-地块关联表
SOURCE base_plot.sql;

-- 用户-组织关联表
SOURCE user_organization.sql;

-- 用户-角色关联表
SOURCE user_role.sql;

-- 角色-权限关联表
SOURCE role_permission.sql;

-- 传感器-地块关联表
SOURCE sensor_plot.sql;

-- 遥感影像表
SOURCE remote_sensing_image.sql;

-- 农事活动表
SOURCE farm_activity.sql;

-- 智能体-农户服务表
SOURCE agent_farmer_service.sql;

-- ============================================
-- 完成
-- ============================================

SET FOREIGN_KEY_CHECKS = 1;

-- 验证表创建
SELECT '数据库创建完成！' AS status;
SELECT COUNT(*) AS table_count FROM information_schema.tables WHERE table_schema = 'farmland';
