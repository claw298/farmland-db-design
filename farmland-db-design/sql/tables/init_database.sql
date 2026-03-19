-- ============================================
-- 农田档案数据库 - 完整表结构定义
-- 生成时间: 2026-03-18
-- 表数量: 37
-- 包含修复: CHECK约束、唯一约束、字段注释
-- ============================================

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- organization.sql
SOURCE organization.sql;

-- user.sql
SOURCE user.sql;

-- role.sql
SOURCE role.sql;

-- permission.sql
SOURCE permission.sql;

-- user_organization.sql
SOURCE user_organization.sql;

-- user_role.sql
SOURCE user_role.sql;

-- role_permission.sql
SOURCE role_permission.sql;

-- agent_farmer_service.sql
SOURCE agent_farmer_service.sql;

-- base.sql
SOURCE base.sql;

-- plot.sql
SOURCE plot.sql;

-- crop.sql
SOURCE crop.sql;

-- growing_season.sql
SOURCE growing_season.sql;

-- growth_stage.sql
SOURCE growth_stage.sql;

-- base_plot.sql
SOURCE base_plot.sql;

-- base_farmer.sql
SOURCE base_farmer.sql;

-- base_agent.sql
SOURCE base_agent.sql;

-- growing_season_crop.sql
SOURCE growing_season_crop.sql;

-- growing_season_plot.sql
SOURCE growing_season_plot.sql;

-- growing_season_growth_stage.sql
SOURCE growing_season_growth_stage.sql;

-- sensor.sql
SOURCE sensor.sql;

-- sensor_type.sql
SOURCE sensor_type.sql;

-- sensor_plot.sql
SOURCE sensor_plot.sql;

-- weather_daily.sql
SOURCE weather_daily.sql;

-- weather_hour.sql
SOURCE weather_hour.sql;

-- remote_sensing_image.sql
SOURCE remote_sensing_image.sql;

-- pest_disease_type.sql
SOURCE pest_disease_type.sql;

-- soil_test_items.sql
SOURCE soil_test_items.sql;

-- soil_test_templates.sql
SOURCE soil_test_templates.sql;

-- soil_items_templates.sql
SOURCE soil_items_templates.sql;

-- soil_test.sql
SOURCE soil_test.sql;

-- alert.sql
SOURCE alert.sql;

-- alert_level.sql
SOURCE alert_level.sql;

-- alert_type.sql
SOURCE alert_type.sql;

-- report.sql
SOURCE report.sql;

-- report_type.sql
SOURCE report_type.sql;

-- farm_activity.sql
SOURCE farm_activity.sql;

-- activity_type.sql
SOURCE activity_type.sql;

SET FOREIGN_KEY_CHECKS = 1;
