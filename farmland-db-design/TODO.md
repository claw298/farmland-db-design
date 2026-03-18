# 农田档案数据库设计 - 待办清单

**项目目录**: `farmland-db-design/`
**创建时间**: 2026-03-18 16:48 GMT+8
**状态**: 进行中

---

## 📋 待办事项

### Phase 1: 基础结构完善
- [ ] **1.1** 为每个表的每个字段添加详细备注（COMMENT）
- [ ] **1.2** 统一字段命名规范（如下划线命名法）
- [ ] **1.3** 确定每个字段的数据类型和长度
- [ ] **1.4** 定义字段默认值（DEFAULT）
- [ ] **1.5** 定义主键（PRIMARY KEY）和自增策略（AUTO_INCREMENT）

### Phase 2: 空值处理
- [ ] **2.1** 识别哪些字段允许NULL，哪些必须NOT NULL
- [ ] **2.2** 将"NAN"字符串改为标准NULL或具体默认值
- [ ] **2.3** 处理weather_hour.ssrd等可能为NULL的字段

### Phase 3: 索引设计
- [ ] **3.1** 为所有外键字段添加索引（FOREIGN KEY）
- [ ] **3.2** 为常用查询字段添加索引：
  - [ ] `plot.id`
  - [ ] `sensor_plot.plot_id`
  - [ ] `weather_daily.plot_id, weather_daily.time`
  - [ ] `weather_hour.plot_id, weather_hour.time`
  - [ ] `alert.plot_id, alert.status`
  - [ ] `report.plot_id, report.time`
- [ ] **3.3** 添加联合索引优化复杂查询
- [ ] **3.4** 移除冗余索引

### Phase 4: 安全性增强
- [ ] **4.1** 用户表密码字段改为存储哈希值（password_hash）
- [ ] **4.2** 添加密码盐值字段（password_salt）
- [ ] **4.3** 敏感字段加密存储设计

### Phase 5: 数据完整性
- [ ] **5.1** 定义所有外键约束（FOREIGN KEY）
- [ ] **5.2** 添加CHECK约束（如status只能是0或1）
- [ ] **5.3** 设计触发器处理级联更新/删除
- [ ] **5.4** 统一时间字段命名（created_at vs creat_time → 统一为created_at）

### Phase 6: 性能优化
- [ ] **6.1** 大数据量表分区方案（可选）
- [ ] **6.2** 表引擎选择（InnoDB vs MyISAM）
- [ ] **6.3** 字符集统一（UTF8MB4）
- [ ] **6.4** 排序规则统一（utf8mb4_unicode_ci）

### Phase 7: 传感器数据扩展（规划）
- [ ] **7.1** 设计传感器原始数据存储方案
- [ ] **7.2** 考虑时序数据库接入

### Phase 8: 文档输出
- [ ] **8.1** 生成完整的 CREATE TABLE SQL 脚本
- [ ] **8.2** 生成 ER 图 / 数据字典文档
- [ ] **8.3** 编写数据库设计说明书

---

## 📊 当前状态统计

| 统计项 | 数量 |
|--------|------|
| 总表数 | 28 |
| 已完成字段备注 | 0/28 |
| 已完成索引设计 | 0/28 |
| 待修复空值问题 | 若干 |

---

## 🔧 详细任务说明

### 1.1 字段备注添加规则
```
示例:
  id BIGINT PRIMARY KEY COMMENT '主键ID，自增'
  name VARCHAR(100) NOT NULL COMMENT '名称'
  status TINYINT DEFAULT 1 COMMENT '状态：0-禁用，1-启用'
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
```

### 3.1 外键索引清单
| 表名 | 外键字段 | 引用表 | 引用字段 |
|------|----------|--------|----------|
| user_organization | user_id | user | id |
| user_organization | org_id | organization | id |
| user_role | user_id | user | id |
| user_role | role_id | role | id |
| role_permission | role_id | role | id |
| role_permission | permission_id | permission | id |
| agent_farmer_service | agent_id | user | id |
| agent_farmer_service | farmer_id | user | id |
| base_plot | base_id | base | id |
| base_plot | plot_id | plot | id |
| base_farmer | base_id | base | id |
| base_farmer | farmer_id | user | id |
| base_agent | base_id | base | id |
| base_agent | agent_id | user | id |
| growing_season_crop | growing_season_id | growing_season | id |
| growing_season_crop | crop_id | crop | id |
| growing_season_plot | growing_season_id | growing_season | id |
| growing_season_plot | plot_id | plot | id |
| sensor_plot | sensor_id | sensor | id |
| sensor_plot | plot_id | plot | id |
| weather_daily | plot_id | plot | id |
| weather_hour | plot_id | plot | id |
| soil_test | plot_id | plot | id |
| alert | plot_id | plot | id |
| report | plot_id | plot | id |
| farm_activity | plot_id | plot | id |

---

## 📁 项目文件结构

```
farmland-db-design/
├── docs/
│   └── 农田档案数据库设计---0ea3b391-...xlsx    # 原始Excel文件
├── sql/
│   └── (待生成SQL文件)
├── scripts/
│   └── (待生成脚本)
├── TODO.md                                       # 本文件
└── README.md                                     # 项目说明
```
