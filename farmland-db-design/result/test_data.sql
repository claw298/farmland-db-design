-- ============================================
-- 农田档案数据库 - 测试数据
-- 插入时间: 2026-03-19
-- ============================================

USE farmland;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ============================================
-- 字典表
-- ============================================

-- 组织机构
INSERT INTO organization (id, name, status, phone) VALUES
(1, '华东农业集团', 1, '021-12345678'),
(2, '华北种植基地联合社', 1, '0312-8765432'),
(3, '西南生态农业公司', 1, '028-9876543');

-- 用户
INSERT INTO user (id, user_id, user_name, phone, gender, name, password, status) VALUES
(1, 1001, 'admin', '13800138000', 1, '系统管理员', '$2a$10$XXXX', 1),
(2, 1002, 'zhangsan', '13800138001', 1, '张三', '$2a$10$XXXX', 1),
(3, 1003, 'lisi', '13800138002', 2, '李四', '$2a$10$XXXX', 1),
(4, 1004, 'wangwu', '13800138003', 1, '王五', '$2a$10$XXXX', 1),
(5, 1005, 'zhaoliu', '13800138004', 2, '赵六', '$2a$10$XXXX', 1);

-- 角色
INSERT INTO role (id, code, role_name, status) VALUES
(1, 'ROLE_ADMIN', '系统管理员', 1),
(2, 'ROLE_MANAGER', '基地管理员', 1),
(3, 'ROLE_TECH', '农技人员', 1),
(4, 'ROLE_FARMER', '农户', 1),
(5, 'ROLE_VIEWER', '查看者', 1);

-- 权限
INSERT INTO permission (id, code, name, status) VALUES
(1, 'PERM_USER_VIEW', '查看用户', 1),
(2, 'PERM_USER_EDIT', '编辑用户', 1),
(3, 'PERM_BASE_VIEW', '查看基地', 1),
(4, 'PERM_BASE_EDIT', '编辑基地', 1),
(5, 'PERM_PLOT_VIEW', '查看地块', 1),
(6, 'PERM_PLOT_EDIT', '编辑地块', 1),
(7, 'PERM_SENSOR_VIEW', '查看传感器', 1),
(8, 'PERM_SENSOR_EDIT', '编辑传感器', 1),
(9, 'PERM_REPORT_VIEW', '查看报表', 1),
(10, 'PERM_REPORT_EDIT', '编辑报表', 1);

-- 作物
INSERT INTO crop (id, name) VALUES
(1, '水稻'), (2, '小麦'), (3, '玉米'), (4, '大豆'),
(5, '番茄'), (6, '黄瓜'), (7, '辣椒'), (8, '白菜');

-- 生长阶段
INSERT INTO growth_stage (id, name) VALUES
(1, '播种期'), (2, '幼苗期'), (3, '生长期'),
(4, '开花期'), (5, '结果期'), (6, '成熟期'), (7, '收获期');

-- 预警级别
INSERT INTO alert_level (id, name) VALUES
(1, '提示'), (2, '警告'), (3, '错误'), (4, '紧急');

-- 预警类型
INSERT INTO alert_type (id, name) VALUES
(1, '气象预警'), (2, '土壤预警'), (3, '病虫害预警'), (4, '设备预警'), (5, '生长预警');

-- 报表类型
INSERT INTO report_type (id, name) VALUES
(1, '日报'), (2, '周报'), (3, '月报'), (4, '季报'), (5, '年报'), (6, '土壤检测报告'), (7, '气象分析报告');

-- 传感器类型
INSERT INTO sensor_type (id, name) VALUES
(1, '温度传感器'), (2, '湿度传感器'), (3, '土壤温度传感器'), (4, '土壤湿度传感器'),
(5, '光照传感器'), (6, '雨量传感器'), (7, '风速传感器'), (8, 'pH传感器');

-- 土壤检测项目
INSERT INTO soil_test_items (id, name, unit) VALUES
(1, 'pH值', 'pH'), (2, '有机质', '%'), (3, '全氮', 'g/kg'),
(4, '有效磷', 'mg/kg'), (5, '速效钾', 'mg/kg'), (6, '电导率', 'mS/cm'), (7, '含水率', '%');

-- 土壤检测模板
INSERT INTO soil_test_templates (id, name, description) VALUES
(1, '通用检测模板', '适用于大多数作物的基础土壤检测'),
(2, '水稻专项模板', '针对水稻种植的专项检测'),
(3, '蔬菜专项模板', '针对蔬菜种植的专项检测');

-- 土壤检测项目-模板关联
INSERT INTO soil_items_templates (id, template_id, item_id) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5), (6, 1, 6), (7, 1, 7),
(8, 2, 1), (9, 2, 2), (10, 2, 3), (11, 2, 4), (12, 2, 5), (13, 2, 6), (14, 2, 7);

-- 病虫害类型 (type: 1=虫害, 2=病害)
INSERT INTO pest_disease_type (id, name, type) VALUES
(1, '稻飞虱', 1), (2, '稻纵卷叶螟', 1), (3, '纹枯病', 2), (4, '稻瘟病', 2),
(5, '白粉病', 2), (6, '蚜虫', 1), (7, '红蜘蛛', 1), (8, '灰霉病', 2);

-- 活动类型
INSERT INTO activity_type (id, name) VALUES
(1, '播种'), (2, '灌溉'), (3, '施肥'), (4, '打药'),
(5, '除草'), (6, '收获'), (7, '整地'), (8, '土壤检测');

-- ============================================
-- 业务表
-- ============================================

-- 基地表
INSERT INTO base (id, name, address) VALUES
(1, '华东示范农场', '上海市崇明区'),
(2, '华北种植基地', '河北省保定市'),
(3, '西南生态园', '四川省成都市');

-- 地块表
INSERT INTO plot (id, name, area_mu, address) VALUES
(1, 'A区-1号田', 50.00, '基地东区'),
(2, 'A区-2号田', 45.00, '基地东区'),
(3, 'B区-1号田', 60.00, '基地西区'),
(4, 'C区-1号田', 80.00, '基地北区'),
(5, 'C区-2号田', 75.00, '基地北区'),
(6, '示范区', 100.00, '基地中央');

-- 传感器表
INSERT INTO sensor (id, name, sensor_id, sensor_model) VALUES
(1, '气象站1号', 1, 'HW-Weather-01'),
(2, '土壤监测点1', 2, 'HW-Soil-01'),
(3, '土壤监测点2', 3, 'HW-Soil-01'),
(4, '光照监测点1', 4, 'PH-Light-01'),
(5, '气象站2号', 5, 'DJ-Weather-02');

-- 日气象数据 (time=日期, query_date=查询时间)
INSERT INTO weather_daily (id, plot_id, time, t2m_max, t2x_min, tp_sum, rh2m_avg, ws10m_max, query_date) VALUES
(1, 1, '2026-03-17', 22.5, 15.3, 0, 65, 2.5, NOW()),
(2, 1, '2026-03-18', 24.1, 16.2, 0, 58, 3.1, NOW()),
(3, 4, '2026-03-17', 18.3, 8.5, 0, 52, 4.2, NOW()),
(4, 4, '2026-03-18', 20.5, 10.1, 0, 48, 3.8, NOW()),
(5, 6, '2026-03-17', 26.2, 18.5, 5.2, 72, 1.5, NOW()),
(6, 6, '2026-03-18', 25.8, 19.1, 8.3, 75, 1.2, NOW());

-- 小时气象数据
INSERT INTO weather_hour (id, plot_id, time, t2m, tp, ws10m, rh2m, ssrd) VALUES
(1, 1, '2026-03-18 08:00:00', 18.5, 0, 2.1, 70, 15000),
(2, 1, '2026-03-18 09:00:00', 20.2, 0, 2.5, 65, 28000),
(3, 1, '2026-03-18 10:00:00', 22.1, 0, 3.0, 60, 45000),
(4, 1, '2026-03-18 11:00:00', 23.5, 0, 3.2, 58, 62000),
(5, 1, '2026-03-18 12:00:00', 24.1, 0, 3.5, 55, 78000),
(6, 4, '2026-03-18 08:00:00', 12.3, 0, 4.0, 58, 12000),
(7, 4, '2026-03-18 09:00:00', 14.5, 0, 4.2, 52, 25000),
(8, 4, '2026-03-18 10:00:00', 17.2, 0, 4.5, 48, 42000);

-- 土壤检测 (data=JSON格式数据)
INSERT INTO soil_test (id, plot_id, templates_id, time, data) VALUES
(1, 1, 2, '2026-03-01', '{"ph":6.5,"organic":3.2,"nitrogen":1.8,"phosphorus":35.5,"potassium":165.2}'),
(2, 2, 2, '2026-03-01', '{"ph":6.8,"organic":3.5,"nitrogen":1.9,"phosphorus":38.2,"potassium":172.5}'),
(3, 3, 1, '2026-03-05', '{"ph":6.2,"organic":2.8,"nitrogen":1.5,"phosphorus":28.5,"potassium":145.0}'),
(4, 4, 3, '2026-03-02', '{"ph":7.2,"organic":2.5,"nitrogen":1.3,"phosphorus":25.0,"potassium":130.0}');

-- 预警记录
INSERT INTO alert (id, plot_id, time, level_id, type_id, content, status) VALUES
(1, 1, '2026-03-15 08:00:00', 2, 1, '{"msg":"高温预警：未来3天气温将超过35℃"}', 1),
(2, 4, '2026-03-10 14:00:00', 3, 3, '{"msg":"稻瘟病预警：检测到稻瘟病孢子"}', 1),
(3, 2, '2026-03-12 09:30:00', 3, 4, '{"msg":"传感器离线告警"}', 1),
(4, 6, '2026-03-16 07:00:00', 2, 2, '{"msg":"土壤干旱预警"}', 0);

-- 报表 (original_data=原始数据JSON, analysis=分析结果JSON, advice=建议JSON)
INSERT INTO report (id, plot_id, time, type_id, original_data, analysis, advice) VALUES
(1, 1, '2026-03-18', 1, '{"irrigation":50,"fertilize":30}', '{"temp_avg":20.1}', '{"action":"继续监测"}'),
(2, 1, '2026-03-18', 3, '{"growth":"良好"}', '{"status":"正常"}', '{"recommend":"保持当前管理"}'),
(3, 4, '2026-03-16', 2, '{"sown":200}', '{"complete":true}', '{"next":"加强施肥"}'),
(4, 6, '2026-03-05', 6, '{"ph":6.5}', '{"health":"good"}', '{"suggest":"继续维护"}');

-- 生长季
INSERT INTO growing_season (id, name, crop_name, start_time, end_time) VALUES
(1, '2026年早稻', '水稻', '2026-03-01', '2026-07-15'),
(2, '2026年小麦', '小麦', '2025-10-01', '2026-06-15'),
(3, '2026年春季蔬菜', '番茄', '2026-02-15', '2026-06-30');

-- ============================================
-- 关联表
-- ============================================

-- 基地-农户关联
INSERT INTO base_farmer (id, base_id, farmer_id) VALUES
(1, 1, 4), (2, 1, 5), (3, 2, 4), (4, 3, 5);

-- 基地-智能体关联
INSERT INTO base_agent (id, base_id, agent_id) VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3);

-- 生长季-作物关联
INSERT INTO growing_season_crop (id, growing_season_id, crop_id) VALUES
(1, 1, 1), (2, 1, 2), (3, 2, 2), (4, 3, 5);

-- 生长季-生长阶段关联
INSERT INTO growing_season_growth_stage (id, growing_season_id, growth_stage_id, start_time, end_time) VALUES
(1, 1, 1, '2026-03-01', '2026-03-08'),
(2, 1, 2, '2026-03-09', '2026-03-29'),
(3, 2, 3, '2026-02-15', '2026-04-01'),
(4, 3, 1, '2026-02-15', '2026-02-22');

-- 生长季-地块关联
INSERT INTO growing_season_plot (id, growing_season_id, plot_id) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 2, 4), (5, 2, 5), (6, 3, 6);

-- 基地-地块关联
INSERT INTO base_plot (id, base_id, plot_id) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 2, 4), (5, 2, 5), (6, 3, 6);

-- 用户-组织关联
INSERT INTO user_organization (id, user_id, org_id) VALUES
(1, 1, 1), (2, 2, 1), (3, 3, 2), (4, 4, 2), (5, 5, 3);

-- 用户-角色关联
INSERT INTO user_role (id, user_id, role_id, is_primary) VALUES
(1, 1, 1, 1), (2, 2, 2, 1), (3, 3, 3, 1), (4, 4, 4, 1), (5, 4, 3, 0), (6, 5, 4, 1);

-- 角色-权限关联
INSERT INTO role_permission (id, role_id, permission_id) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 1, 4), (5, 1, 5), (6, 1, 6), (7, 1, 7), (8, 1, 8), (9, 1, 9), (10, 1, 10),
(11, 2, 3), (12, 2, 4), (13, 2, 5), (14, 2, 6), (15, 2, 9), (16, 2, 10),
(17, 3, 3), (18, 3, 5), (19, 3, 7), (20, 4, 5), (21, 5, 3);

-- 传感器-地块关联
INSERT INTO sensor_plot (id, sensor_id, plot_id) VALUES
(1, 1, 1), (2, 2, 1), (3, 3, 2), (4, 4, 3), (5, 5, 4);

-- 遥感影像 (image=图片路径JSON)
INSERT INTO remote_sensing_image (id, plot_id, time, type, image) VALUES
(1, 1, '2026-03-10', 1, '{"url":"/images/sat_001.tif","ndvi":0.75}'),
(2, 1, '2026-03-15', 2, '{"url":"/images/sat_002.tif","ndvi":0.78}'),
(3, 4, '2026-03-12', 1, '{"url":"/images/sat_003.tif","ndvi":0.68}'),
(4, 6, '2026-03-08', 3, '{"url":"/images/sat_004.tif","ndvi":0.82}');

-- 农事活动 (basis=依据JSON, content=内容JSON)
INSERT INTO farm_activity (id, plot_id, time, type_id, topic, basis, content) VALUES
(1, 1, '2026-03-01', 1, '早稻播种', '{"seed":"150kg"}', '{"result":"顺利"}'),
(2, 1, '2026-03-10', 3, '基肥施用', '{"fertilizer":"500kg复合肥"}', '{"status":"完成"}'),
(3, 2, '2026-03-12', 2, '第一次灌溉', '{"water":"45m³"}', '{"status":"完成"}'),
(4, 4, '2026-03-05', 1, '小麦播种', '{"seed":"800kg"}', '{"method":"机械化"}'),
(5, 6, '2026-03-08', 4, '预防性喷洒', '{"pesticide":"50L"}', '{"target":"病虫害"}'),
(6, 3, '2026-03-15', 6, '小麦收割', '{"yield":"6000kg"}', '{"status":"完成"}');

-- 智能体-农户服务
INSERT INTO agent_farmer_service (id, agent_id, farmer_id) VALUES
(1, 1, 4), (2, 2, 5), (3, 3, 4);

-- ============================================
SET FOREIGN_KEY_CHECKS = 1;
