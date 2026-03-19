# 农田档案数据库 - 修复 Todo 清单

**创建时间**: 2026-03-18 20:05  
**更新时间**: 2026-03-18 20:31  
**项目**: farmland-db-design  
**状态**: ✅ 已完成

---

## Phase 1: 严重问题修复

- [x] **1.1** 为 `base_plot` 表添加 `UNIQUE(plot_id)` 约束，确保地块只属于一个基地
- [x] **1.2** 验证修复结果

## Phase 2: CHECK 约束完善

- [x] **2.1** `plot.area_mu` 添加 `CHECK (area_mu > 0)` 约束
- [x] **2.2** `user.user_id` 添加 `CHECK (user_id > 0)` 约束
- [x] **2.3** `sensor.sensor_id` 添加 `CHECK (sensor_id > 0)` 约束
- [x] **2.4** `growing_season` 添加 `CHECK (end_time > start_time)` 约束

## Phase 3: 注释和字段完善

- [x] **3.1** 完善 `pest_disease_type.type` 字段 COMMENT 注释

---

## 完成记录

| 日期 | 完成项 | 验证结果 |
|------|--------|----------|
| 2026-03-18 | 1.1 base_plot 唯一约束 | ✅ 已存在 |
| 2026-03-18 | 1.2 验证修复结果 | ✅ 通过 |
| 2026-03-18 | 2.1-2.4 CHECK约束 | ✅ SQL已更新 |
| 2026-03-18 | 3.1 pest_disease_type注释 | ✅ 已完成 |

---

## 生成文档

| 文档 | 路径 | 说明 |
|------|------|------|
| 数据字典v2 | `docs/数据字典v2.md` | 完整37张表字段定义 |
| 结构分析报告v2 | `docs/结构分析报告v2.md` | ER关系、索引、约束分析 |
