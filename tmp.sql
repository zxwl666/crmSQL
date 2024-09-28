/*
 Yudao Database Transfer Tool

 Source Server Type    : MySQL

 Target Server Type    : PostgreSQL

 Date: 2024-09-28 14:20:08
*/


-- ----------------------------
-- Table structure for dual
-- ----------------------------
DROP TABLE IF EXISTS dual;
CREATE TABLE dual
(
    id int2
);

COMMENT ON TABLE dual IS '数据库连接的表';

-- ----------------------------
-- Records of dual
-- ----------------------------
-- @formatter:off
INSERT INTO dual VALUES (1);
-- @formatter:on

-- ----------------------------
-- Table structure for crm_business
-- ----------------------------
DROP TABLE IF EXISTS crm_business;
CREATE TABLE crm_business (
    id int8 NOT NULL,
  name None NOT NULL,
  customer_id int8 NOT NULL,
  follow_up_status bool NULL DEFAULT '0',
  contact_last_time timestamp NULL DEFAULT NULL,
  contact_next_time timestamp NULL DEFAULT NULL,
  owner_user_id int8 NULL DEFAULT NULL,
  status_type_id int8 NULL DEFAULT NULL,
  status_id int8 NULL DEFAULT NULL,
  end_status int2 NULL DEFAULT NULL,
  deal_time timestamp NULL DEFAULT NULL,
  total_product_price numeric(24,6) NULL DEFAULT NULL,
  discount_percent numeric(24,6) NULL DEFAULT NULL,
  total_price numeric(24,6) NULL DEFAULT NULL,
  remark None NULL DEFAULT NULL,
  creator None NOT NULL DEFAULT '',
  updater None NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_time timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  end_remark None NULL DEFAULT NULL,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NULL DEFAULT 0
);

ALTER TABLE crm_business ADD CONSTRAINT pk_crm_business PRIMARY KEY (id);

COMMENT ON COLUMN crm_business.id IS '编号';
COMMENT ON COLUMN crm_business.name IS '商机名称';
COMMENT ON COLUMN crm_business.customer_id IS '客户编号';
COMMENT ON COLUMN crm_business.follow_up_status IS '跟进状态';
COMMENT ON COLUMN crm_business.contact_last_time IS '最后跟进时间';
COMMENT ON COLUMN crm_business.contact_next_time IS '下次联系时间';
COMMENT ON COLUMN crm_business.owner_user_id IS '负责人的用户编号';
COMMENT ON COLUMN crm_business.status_type_id IS '商机状态类型编号';
COMMENT ON COLUMN crm_business.status_id IS '商机状态编号';
COMMENT ON COLUMN crm_business.end_status IS '结束状态：1-赢单 2-输单3-无效';
COMMENT ON COLUMN crm_business.deal_time IS '预计成交日期';
COMMENT ON COLUMN crm_business.total_product_price IS '产品总金额，单位：元';
COMMENT ON COLUMN crm_business.discount_percent IS '整单折扣，百分比';
COMMENT ON COLUMN crm_business.total_price IS '商机总金额，单位：元';
COMMENT ON COLUMN crm_business.remark IS '备注';
COMMENT ON COLUMN crm_business.creator IS '创建人';
COMMENT ON COLUMN crm_business.updater IS '更新人';
COMMENT ON COLUMN crm_business.create_time IS '创建时间';
COMMENT ON COLUMN crm_business.update_time IS '更新时间';
COMMENT ON COLUMN crm_business.end_remark IS '结束时的备注';
COMMENT ON COLUMN crm_business.deleted IS '逻辑删除';
COMMENT ON COLUMN crm_business.tenant_id IS '租户ID';
COMMENT ON TABLE crm_business IS 'CRM 商机表';

-- ----------------------------
-- Records of crm_business
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_business (id, name, customer_id, follow_up_status, contact_last_time, contact_next_time, owner_user_id, status_type_id, status_id, end_status, deal_time, total_product_price, discount_percent, total_price, remark, creator, updater, create_time, update_time, end_remark, deleted, tenant_id) VALUES (4, '一个商机', 2, NULL, '2024-02-19 21:38:37', '2024-02-13 00:00:00', 1, 3, 4, 0, NULL, NULL, NULL, 10.000000, NULL, '', '1', '2023-11-30 12:05:16', '2024-02-19 21:38:38', NULL, '1', 1), (5, 'haoxx', 14, '0', NULL, NULL, 1, 3, NULL, NULL, '2024-02-13 00:00:00', 10210.000000, 2.000000, 10005.800000, '321321', '1', '1', '2024-02-21 16:35:59', '2024-02-21 17:42:54', NULL, '0', 1), (6, '哈罗', 14, '1', '2024-02-21 23:35:46', '2024-02-20 00:00:00', 1, 5, NULL, NULL, NULL, 10010.000000, 0.000000, 10010.000000, NULL, '1', '1', '2024-02-21 21:30:17', '2024-02-21 23:35:46', NULL, '0', 1), (7, '摩西摩西', 14, '0', NULL, NULL, 1, 5, 7, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, '1', '1', '2024-02-21 21:48:20', '2024-02-21 21:48:20', NULL, '0', 1), (8, '吃饭落', 14, '0', NULL, NULL, 103, 4, 5, NULL, '2024-02-14 00:00:00', 0.000000, 0.000000, 0.000000, NULL, '1', '1', '2024-02-21 21:49:29', '2024-02-21 21:49:29', NULL, '0', 1), (9, '测试关联商机', 14, '0', NULL, NULL, 1, 5, 7, 1, NULL, 0.000000, 0.000000, 0.000000, NULL, '1', '1', '2024-02-22 09:32:06', '2024-02-22 20:40:18', NULL, '0', 1), (10, '测试某个状态', 14, '0', NULL, NULL, 1, 4, 6, 3, NULL, 0.000000, 0.000000, 0.000000, NULL, '1', '1', '2024-02-22 19:55:25', '2024-02-22 20:36:49', NULL, '0', 1), (11, '阿巴阿巴', 14, '0', NULL, NULL, 1, 4, 6, 1, NULL, 0.000000, 0.000000, 0.000000, NULL, '1', '1', '2024-02-22 20:40:54', '2024-02-22 20:41:07', NULL, '0', 1), (12, '演示商机', 16, '0', NULL, NULL, 1, 6, 10, 3, NULL, 10110.300000, 20.000000, 8088.240000, NULL, '1', '1', '2024-02-24 00:12:04', '2024-02-24 00:16:31', NULL, '0', 1), (13, '哈哈哈', 17, '0', NULL, '2024-02-13 00:00:00', 1, 4, 5, NULL, '2024-02-13 00:00:00', 20020.000000, 20.000000, 16016.000000, NULL, '1', '1', '2024-02-24 00:23:03', '2024-02-24 11:16:42', NULL, '0', 1), (14, '新的线索', 16, '0', NULL, NULL, 1, 4, 5, NULL, NULL, 0.000000, 0.000000, 0.000000, NULL, '1', '1', '2024-02-24 14:50:30', '2024-02-24 14:50:30', NULL, '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_business_seq;
CREATE SEQUENCE crm_business_seq
    START 5;

-- ----------------------------
-- Table structure for crm_business_product
-- ----------------------------
DROP TABLE IF EXISTS crm_business_product;
CREATE TABLE crm_business_product (
    id int8 NOT NULL,
  business_id int8 NOT NULL,
  product_id int8 NOT NULL,
  product_price numeric(24,6) NOT NULL,
  business_price numeric(24,6) NOT NULL,
  count numeric(24,6) NOT NULL,
  total_price numeric(24,6) NOT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 1
);

ALTER TABLE crm_business_product ADD CONSTRAINT pk_crm_business_product PRIMARY KEY (id);

COMMENT ON COLUMN crm_business_product.id IS '主键';
COMMENT ON COLUMN crm_business_product.business_id IS '商机编号';
COMMENT ON COLUMN crm_business_product.product_id IS '产品编号';
COMMENT ON COLUMN crm_business_product.product_price IS '产品单价';
COMMENT ON COLUMN crm_business_product.business_price IS '商机价格';
COMMENT ON COLUMN crm_business_product.count IS '数量';
COMMENT ON COLUMN crm_business_product.total_price IS '总计价格';
COMMENT ON COLUMN crm_business_product.creator IS '创建者';
COMMENT ON COLUMN crm_business_product.create_time IS '创建时间';
COMMENT ON COLUMN crm_business_product.updater IS '更新者';
COMMENT ON COLUMN crm_business_product.update_time IS '更新时间';
COMMENT ON COLUMN crm_business_product.deleted IS '是否删除';
COMMENT ON COLUMN crm_business_product.tenant_id IS '租户编号';
COMMENT ON TABLE crm_business_product IS 'CRM 商机产品关联表';

-- ----------------------------
-- Records of crm_business_product
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_business_product (id, business_id, product_id, product_price, business_price, count, total_price, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (29, 5, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-21 16:35:59', '1', '2024-02-21 09:42:54', '1', 1), (30, 5, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-21 17:42:54', '1', '2024-02-21 17:42:54', '0', 1), (31, 5, 5, 100.300000, 200.000000, 1.000000, 200.000000, '1', '2024-02-21 17:42:54', '1', '2024-02-21 17:42:54', '0', 1), (32, 6, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-21 21:30:17', '1', '2024-02-21 21:30:17', '0', 1), (33, 12, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 00:12:04', '1', '2024-02-24 00:12:04', '0', 1), (34, 12, 5, 100.300000, 100.300000, 1.000000, 100.300000, '1', '2024-02-24 00:12:04', '1', '2024-02-24 00:12:04', '0', 1), (35, 13, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 07:50:16', '1', '2024-02-24 07:50:16', '0', 1), (36, 13, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 07:50:16', '1', '2024-02-24 07:50:16', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_business_product_seq;
CREATE SEQUENCE crm_business_product_seq
    START 30;

-- ----------------------------
-- Table structure for crm_business_status
-- ----------------------------
DROP TABLE IF EXISTS crm_business_status;
CREATE TABLE crm_business_status (
    id int8 NOT NULL,
  type_id int8 NOT NULL,
  name varchar(100) NOT NULL,
  percent numeric(24,6) NOT NULL,
  sort int4 NOT NULL DEFAULT 1,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  tenant_id int8 NOT NULL DEFAULT 0,
  deleted int2 NOT NULL DEFAULT 0
);

ALTER TABLE crm_business_status ADD CONSTRAINT pk_crm_business_status PRIMARY KEY (id);

COMMENT ON COLUMN crm_business_status.id IS '主键';
COMMENT ON COLUMN crm_business_status.type_id IS '状态类型编号';
COMMENT ON COLUMN crm_business_status.name IS '状态类型名';
COMMENT ON COLUMN crm_business_status.percent IS '赢单率';
COMMENT ON COLUMN crm_business_status.sort IS '排序';
COMMENT ON COLUMN crm_business_status.creator IS '创建者';
COMMENT ON COLUMN crm_business_status.create_time IS '创建时间';
COMMENT ON COLUMN crm_business_status.updater IS '更新者';
COMMENT ON COLUMN crm_business_status.update_time IS '更新时间';
COMMENT ON COLUMN crm_business_status.tenant_id IS '租户编号';
COMMENT ON COLUMN crm_business_status.deleted IS '是否删除';
COMMENT ON TABLE crm_business_status IS 'CRM 商机状态表';

-- ----------------------------
-- Records of crm_business_status
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_business_status (id, type_id, name, percent, sort, creator, create_time, updater, update_time, tenant_id, deleted) VALUES (4, 3, '小状态', 10.000000, 1, '1', '2023-11-30 12:18:42', '', '2024-02-21 12:30:33', 1, '0'), (5, 4, '吃饭', 20.000000, 0, '', '2024-02-21 12:54:57', '', '2024-02-21 13:49:11', 1, '0'), (6, 4, '睡觉', 30.000000, 1, '', '2024-02-21 12:54:57', '', '2024-02-21 13:49:11', 1, '0'), (7, 5, '', 10.000000, 0, '', '2024-02-21 12:56:49', '', '2024-02-21 12:57:36', 1, '0'), (8, 4, '阿豆豆', 10.000000, 2, '', '2024-02-21 13:49:11', '', '2024-02-21 13:49:11', 1, '0'), (9, 6, '初步接触', 10.000000, 0, '', '2024-02-23 15:58:25', '', '2024-02-23 15:58:25', 1, '0'), (10, 6, '需求分析', 20.000000, 1, '', '2024-02-23 15:58:25', '', '2024-02-23 15:58:25', 1, '0'), (11, 6, '方案制定', 30.000000, 2, '', '2024-02-23 15:58:25', '', '2024-02-23 15:58:25', 1, '0');
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_business_status_seq;
CREATE SEQUENCE crm_business_status_seq
    START 5;

-- ----------------------------
-- Table structure for crm_business_status_type
-- ----------------------------
DROP TABLE IF EXISTS crm_business_status_type;
CREATE TABLE crm_business_status_type (
    id int8 NOT NULL,
  name varchar(100) NOT NULL,
  dept_ids varchar(255) NOT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  tenant_id int8 NOT NULL DEFAULT 0,
  deleted int2 NOT NULL DEFAULT 0
);

ALTER TABLE crm_business_status_type ADD CONSTRAINT pk_crm_business_status_type PRIMARY KEY (id);

COMMENT ON COLUMN crm_business_status_type.id IS '主键';
COMMENT ON COLUMN crm_business_status_type.name IS '状态组名';
COMMENT ON COLUMN crm_business_status_type.dept_ids IS '使用的部门编号';
COMMENT ON COLUMN crm_business_status_type.creator IS '创建者';
COMMENT ON COLUMN crm_business_status_type.create_time IS '创建时间';
COMMENT ON COLUMN crm_business_status_type.updater IS '更新者';
COMMENT ON COLUMN crm_business_status_type.update_time IS '更新时间';
COMMENT ON COLUMN crm_business_status_type.tenant_id IS '租户编号';
COMMENT ON COLUMN crm_business_status_type.deleted IS '是否删除';
COMMENT ON TABLE crm_business_status_type IS 'CRM 商机状态组表';

-- ----------------------------
-- Records of crm_business_status_type
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_business_status_type (id, name, dept_ids, creator, create_time, updater, update_time, tenant_id, deleted) VALUES (3, '大状态', '100,101', '1', '2023-11-30 12:18:22', '', '2024-02-21 12:34:10', 1, '0'), (4, '吃饭睡觉打豆豆', '', '1', '2024-02-21 20:54:58', '1', '2024-02-21 21:49:12', 1, '0'), (5, '测试一下', '103,105,106,107', '1', '2024-02-21 20:56:50', '1', '2024-02-21 20:57:37', 1, '0'), (6, '标准流程', '', '1', '2024-02-23 23:58:26', '1', '2024-02-23 23:58:26', 1, '0');
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_business_status_type_seq;
CREATE SEQUENCE crm_business_status_type_seq
    START 4;

-- ----------------------------
-- Table structure for crm_clue
-- ----------------------------
DROP TABLE IF EXISTS crm_clue;
CREATE TABLE crm_clue (
    id int8 NOT NULL,
  name varchar(128) NOT NULL DEFAULT '',
  follow_up_status bool NULL DEFAULT '0',
  contact_last_time timestamp NULL DEFAULT NULL,
  contact_last_content varchar(255) NULL DEFAULT NULL,
  contact_next_time timestamp NULL DEFAULT NULL,
  owner_user_id int8 NOT NULL,
  transform_status bool NULL DEFAULT '0',
  customer_id int8 NULL DEFAULT NULL,
  mobile varchar(20) NULL DEFAULT NULL,
  telephone varchar(20) NULL DEFAULT NULL,
  qq varchar(20) NULL DEFAULT NULL,
  wechat varchar(255) NULL DEFAULT NULL,
  email varchar(255) NULL DEFAULT NULL,
  area_id int8 NULL DEFAULT NULL,
  detail_address varchar(255) NULL DEFAULT NULL,
  industry_id int4 NULL DEFAULT NULL,
  level int4 NULL DEFAULT NULL,
  source int4 NULL DEFAULT NULL,
  remark varchar(500) NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_clue ADD CONSTRAINT pk_crm_clue PRIMARY KEY (id);

COMMENT ON COLUMN crm_clue.id IS '编号，主键自增';
COMMENT ON COLUMN crm_clue.name IS '线索名称';
COMMENT ON COLUMN crm_clue.follow_up_status IS '跟进状态';
COMMENT ON COLUMN crm_clue.contact_last_time IS '最后跟进时间';
COMMENT ON COLUMN crm_clue.contact_last_content IS '最后跟进内容';
COMMENT ON COLUMN crm_clue.contact_next_time IS '下次联系时间';
COMMENT ON COLUMN crm_clue.owner_user_id IS '负责人的用户编号';
COMMENT ON COLUMN crm_clue.transform_status IS '转化状态';
COMMENT ON COLUMN crm_clue.customer_id IS '客户编号';
COMMENT ON COLUMN crm_clue.mobile IS '手机号';
COMMENT ON COLUMN crm_clue.telephone IS '电话';
COMMENT ON COLUMN crm_clue.qq IS 'QQ';
COMMENT ON COLUMN crm_clue.wechat IS '微信';
COMMENT ON COLUMN crm_clue.email IS '邮箱';
COMMENT ON COLUMN crm_clue.area_id IS '地区编号';
COMMENT ON COLUMN crm_clue.detail_address IS '详细地址';
COMMENT ON COLUMN crm_clue.industry_id IS '所属行业';
COMMENT ON COLUMN crm_clue.level IS '客户等级';
COMMENT ON COLUMN crm_clue.source IS '客户来源';
COMMENT ON COLUMN crm_clue.remark IS '备注';
COMMENT ON COLUMN crm_clue.creator IS '创建者';
COMMENT ON COLUMN crm_clue.create_time IS '创建时间';
COMMENT ON COLUMN crm_clue.updater IS '更新者';
COMMENT ON COLUMN crm_clue.update_time IS '更新时间';
COMMENT ON COLUMN crm_clue.deleted IS '是否删除';
COMMENT ON COLUMN crm_clue.tenant_id IS '租户编号';
COMMENT ON TABLE crm_clue IS 'CRM 线索表';

-- ----------------------------
-- Records of crm_clue
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_clue (id, name, follow_up_status, contact_last_time, contact_last_content, contact_next_time, owner_user_id, transform_status, customer_id, mobile, telephone, qq, wechat, email, area_id, detail_address, industry_id, level, source, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, '我是线索baba', NULL, NULL, '测试一下内容', '2024-01-22 00:00:00', 1, NULL, NULL, '18818260278', '021-88288283', NULL, NULL, '76853423@qq.com', NULL, '某某小区', 1, 1, 1, NULL, '1', '2024-01-22 09:38:05', '1', '2024-02-19 10:56:17', '0', 1), (2, '测试线索啊', '0', '2024-02-19 18:56:35', NULL, '2024-02-22 00:00:00', 103, '1', 5, '15601691388', '15601691389', '8888777', 'wang-server', '87684833@qq.com', 130102, '某个测试地址', 3, 2, 1, '写个备注', '1', '2024-02-19 18:56:35', '1', '2024-02-19 12:37:23', '0', 1), (3, '测试一下', '0', '2024-02-19 21:02:00', NULL, NULL, 1, '1', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '1', '2024-02-19 21:02:00', '1', '2024-02-19 13:03:32', '1', 1), (4, '哈哈哈哈的线索', '0', '2024-02-19 21:38:16', NULL, NULL, 1, '1', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-19 21:38:16', '1', '2024-02-19 22:15:27', '0', 1), (5, '再来一个线索', '0', '2024-02-19 22:16:35', NULL, NULL, 1, '1', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-19 22:16:35', '1', '2024-02-19 22:16:38', '0', 1), (6, '线索一个', '0', '2024-02-19 22:17:08', NULL, NULL, 1, '1', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-19 22:17:08', '1', '2024-02-19 22:17:12', '0', 1), (7, '信线索', '0', '2024-02-19 22:24:30', NULL, NULL, 1, '1', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-19 22:24:30', '1', '2024-02-19 22:46:36', '0', 1), (8, '演示线索', '0', NULL, NULL, NULL, 1, '1', 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-23 21:04:05', '1', '2024-02-23 21:16:14', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_clue_seq;
CREATE SEQUENCE crm_clue_seq
    START 2;

-- ----------------------------
-- Table structure for crm_contact
-- ----------------------------
DROP TABLE IF EXISTS crm_contact;
CREATE TABLE crm_contact (
    id int8 NOT NULL,
  name varchar(128) NULL DEFAULT NULL,
  customer_id int8 NULL DEFAULT NULL,
  contact_last_time timestamp NULL DEFAULT NULL,
  contact_last_content varchar(255) NULL DEFAULT NULL,
  contact_next_time timestamp NULL DEFAULT NULL,
  owner_user_id varchar(256) NULL DEFAULT NULL,
  mobile varchar(16) NULL DEFAULT NULL,
  telephone varchar(16) NULL DEFAULT NULL,
  email varchar(128) NULL DEFAULT NULL,
  qq int4 NULL DEFAULT NULL,
  wechat varchar(128) NULL DEFAULT NULL,
  area_id int8 NULL DEFAULT NULL,
  detail_address varchar(256) NULL DEFAULT NULL,
  sex int4 NULL DEFAULT NULL,
  master bool NULL DEFAULT NULL,
  parent_id int8 NULL DEFAULT NULL,
  post varchar(32) NULL DEFAULT NULL,
  remark varchar(512) NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT NULL,
  create_time timestamp NULL DEFAULT NULL,
  updater varchar(64) NULL DEFAULT NULL,
  update_time timestamp NULL DEFAULT NULL,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NULL DEFAULT NULL
);

ALTER TABLE crm_contact ADD CONSTRAINT pk_crm_contact PRIMARY KEY (id);

COMMENT ON COLUMN crm_contact.id IS '主键';
COMMENT ON COLUMN crm_contact.name IS '联系人名称';
COMMENT ON COLUMN crm_contact.customer_id IS '客户编号';
COMMENT ON COLUMN crm_contact.contact_last_time IS '最后跟进时间';
COMMENT ON COLUMN crm_contact.contact_last_content IS '最后跟进内容';
COMMENT ON COLUMN crm_contact.contact_next_time IS '下次联系时间';
COMMENT ON COLUMN crm_contact.owner_user_id IS '负责人用户编号';
COMMENT ON COLUMN crm_contact.mobile IS '手机号';
COMMENT ON COLUMN crm_contact.telephone IS '电话';
COMMENT ON COLUMN crm_contact.email IS '电子邮箱';
COMMENT ON COLUMN crm_contact.area_id IS '地区';
COMMENT ON COLUMN crm_contact.detail_address IS '地址';
COMMENT ON COLUMN crm_contact.sex IS '性别';
COMMENT ON COLUMN crm_contact.master IS '是否关键决策人';
COMMENT ON COLUMN crm_contact.parent_id IS '直系上属';
COMMENT ON COLUMN crm_contact.post IS '职务';
COMMENT ON COLUMN crm_contact.remark IS '备注';
COMMENT ON COLUMN crm_contact.creator IS '创建人';
COMMENT ON COLUMN crm_contact.create_time IS '创建时间';
COMMENT ON COLUMN crm_contact.updater IS '更新人';
COMMENT ON COLUMN crm_contact.update_time IS '更新时间';
COMMENT ON TABLE crm_contact IS 'CRM 联系人';

-- ----------------------------
-- Records of crm_contact
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_contact (id, name, customer_id, contact_last_time, contact_last_content, contact_next_time, owner_user_id, mobile, telephone, email, qq, wechat, area_id, detail_address, sex, master, parent_id, post, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (9, '土豆', 2, '2024-01-17 00:00:00', NULL, '2024-01-26 23:10:11', NULL, '15601691300', '18818260277', NULL, NULL, NULL, 120101, '1111', 1, '0', 11, 'CEO', NULL, '1', '2023-11-29 14:02:45', '1', '2024-01-03 23:17:17', '0', 1), (10, '番茄', 2, NULL, NULL, NULL, NULL, '15601691301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 9, 'CTO', NULL, '1', '2023-11-29 14:02:45', '1', '2023-11-29 14:02:45', '0', 1), (11, '深夜牛排', 3, '2024-01-22 09:35:23', '吃饭、睡觉、打逗逗', '2023-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2024-01-03 23:16:54', '1', '2024-02-03 01:30:51', '0', 1), (12, '测试名字', 12, NULL, NULL, NULL, '1', '15601691300', '15601691300', '312321@qq.com', 32, '321312', 110101, '321', 1, '0', 12, '321321', '321321', '1', '2024-02-20 21:10:57', '1', '2024-02-20 21:11:33', '0', 1), (13, 'AIYA', NULL, '2024-02-20 23:20:19', '啦啦啦', '2024-02-07 00:00:00', '112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2024-02-20 23:18:16', '1', '2024-02-24 11:43:05', '0', 1), (14, '天哪', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2024-02-20 23:27:33', '1', '2024-02-20 23:27:33', '0', 1), (15, '测试一个关联客户', 14, NULL, NULL, NULL, NULL, '15601691300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2024-02-22 09:08:12', '1', '2024-02-22 09:19:29', '0', 1), (16, '演示联系人', 17, NULL, NULL, '2024-02-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2024-02-23 23:16:43', '1', '2024-02-24 11:43:05', '0', 1), (17, 'biubiu', 16, NULL, NULL, '2024-02-19 00:00:00', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2024-02-24 15:30:39', '1', '2024-02-24 15:42:41', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_contact_seq;
CREATE SEQUENCE crm_contact_seq
    START 10;

-- ----------------------------
-- Table structure for crm_contact_business
-- ----------------------------
DROP TABLE IF EXISTS crm_contact_business;
CREATE TABLE crm_contact_business (
    id int4 NOT NULL,
  contact_id int4 NULL DEFAULT NULL,
  business_id int4 NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_contact_business ADD CONSTRAINT pk_crm_contact_business PRIMARY KEY (id);

COMMENT ON COLUMN crm_contact_business.id IS '主键';
COMMENT ON COLUMN crm_contact_business.contact_id IS '联系人id';
COMMENT ON COLUMN crm_contact_business.business_id IS '商机id';
COMMENT ON COLUMN crm_contact_business.creator IS '创建者';
COMMENT ON COLUMN crm_contact_business.create_time IS '创建时间';
COMMENT ON COLUMN crm_contact_business.updater IS '更新者';
COMMENT ON COLUMN crm_contact_business.update_time IS '更新时间';
COMMENT ON COLUMN crm_contact_business.deleted IS '是否删除';
COMMENT ON COLUMN crm_contact_business.tenant_id IS '租户编号';
COMMENT ON TABLE crm_contact_business IS 'CRM 联系人商机关联表';

-- ----------------------------
-- Records of crm_contact_business
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_contact_business (id, contact_id, business_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (32, 15, 7, '1', '2024-02-22 09:08:12', '1', '2024-02-22 09:08:12', '0', 1), (33, 15, 9, '1', '2024-02-22 09:32:09', '1', '2024-02-22 09:32:09', '0', 1), (34, 16, 13, '1', '2024-02-24 00:23:03', '1', '2024-02-24 00:23:03', '0', 1), (35, 17, 14, '1', '2024-02-24 19:28:51', '1', '2024-02-24 11:31:02', '1', 1), (36, 17, 14, '1', '2024-02-24 19:31:07', '1', '2024-02-24 19:31:07', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_contact_business_seq;
CREATE SEQUENCE crm_contact_business_seq
    START 33;

-- ----------------------------
-- Table structure for crm_contract
-- ----------------------------
DROP TABLE IF EXISTS crm_contract;
CREATE TABLE crm_contract (
    id int8 NOT NULL,
  name varchar(128) NOT NULL,
  no varchar(128) NOT NULL,
  customer_id int8 NOT NULL,
  business_id int8 NULL DEFAULT NULL,
  contact_last_time timestamp NULL DEFAULT NULL,
  owner_user_id int8 NULL DEFAULT NULL,
  process_instance_id varchar(64) NULL DEFAULT NULL,
  audit_status int2 NOT NULL DEFAULT 0,
  order_date timestamp NULL DEFAULT NULL,
  start_time timestamp NULL DEFAULT NULL,
  end_time timestamp NULL DEFAULT NULL,
  total_product_price numeric(24,6) NULL DEFAULT NULL,
  discount_percent numeric(24,6) NULL DEFAULT NULL,
  total_price numeric(10,2) NULL DEFAULT NULL,
  sign_contact_id int8 NULL DEFAULT NULL,
  sign_user_id int8 NULL DEFAULT NULL,
  remark varchar(500) NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_contract ADD CONSTRAINT pk_crm_contract PRIMARY KEY (id);

COMMENT ON COLUMN crm_contract.id IS '编号，主键自增';
COMMENT ON COLUMN crm_contract.name IS '合同名称';
COMMENT ON COLUMN crm_contract.no IS '合同编号';
COMMENT ON COLUMN crm_contract.customer_id IS '客户编号';
COMMENT ON COLUMN crm_contract.business_id IS '商机编号';
COMMENT ON COLUMN crm_contract.contact_last_time IS '最后跟进时间';
COMMENT ON COLUMN crm_contract.owner_user_id IS '负责人的用户编号';
COMMENT ON COLUMN crm_contract.process_instance_id IS '工作流编号';
COMMENT ON COLUMN crm_contract.audit_status IS '审批状态';
COMMENT ON COLUMN crm_contract.order_date IS '下单日期';
COMMENT ON COLUMN crm_contract.start_time IS '开始时间';
COMMENT ON COLUMN crm_contract.end_time IS '结束时间';
COMMENT ON COLUMN crm_contract.total_product_price IS '产品总金额';
COMMENT ON COLUMN crm_contract.discount_percent IS '整单折扣';
COMMENT ON COLUMN crm_contract.total_price IS '合同总金额';
COMMENT ON COLUMN crm_contract.sign_contact_id IS '联系人编号';
COMMENT ON COLUMN crm_contract.sign_user_id IS '公司签约人';
COMMENT ON COLUMN crm_contract.remark IS '备注';
COMMENT ON COLUMN crm_contract.creator IS '创建者';
COMMENT ON COLUMN crm_contract.create_time IS '创建时间';
COMMENT ON COLUMN crm_contract.updater IS '更新者';
COMMENT ON COLUMN crm_contract.update_time IS '更新时间';
COMMENT ON COLUMN crm_contract.deleted IS '是否删除';
COMMENT ON COLUMN crm_contract.tenant_id IS '租户编号';
COMMENT ON TABLE crm_contract IS 'CRM 合同表';

-- ----------------------------
-- Records of crm_contract
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_contract (id, name, no, customer_id, business_id, contact_last_time, owner_user_id, process_instance_id, audit_status, order_date, start_time, end_time, total_product_price, discount_percent, total_price, sign_contact_id, sign_user_id, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, '我是合同', 'Q100', 12, 11, '2024-02-19 20:01:17', 100, NULL, 20, '2024-02-02 00:00:00', '2024-02-23 00:00:00', '2024-02-28 00:00:00', 2.000000, 1.000000, 200.00, 15, 1, '测试', '1', '2024-02-01 13:24:26', '1', '2024-02-22 13:33:34', '0', 1), (4, '测试合同', '1708617038936', 14, 9, '2024-02-23 09:30:41', 1, '466480fe-d1ed-11ee-a436-8a9af48de719', 20, '2024-02-22 00:00:00', '2024-02-06 00:00:00', '2024-02-13 00:00:00', 10010.000000, 0.000000, 10010.00, 14, 1, NULL, '1', '2024-02-22 23:50:39', '1', '2024-02-23 12:27:42', '0', 1), (5, '阿巴阿巴', '1708664618781', 14, NULL, NULL, 1, 'e9e87175-d208-11ee-ba3b-5e0431cb568f', 20, '2024-02-19 00:00:00', NULL, NULL, 0.000000, 0.000000, 0.00, NULL, NULL, NULL, '1', '2024-02-23 13:03:39', '1', '2024-02-23 13:04:06', '0', 1), (6, '阿巴', '1708668768747', 14, NULL, NULL, 1, '92b0f9a5-d212-11ee-ba3b-5e0431cb568f', 10, '2024-02-19 00:00:00', NULL, NULL, 0.000000, 0.000000, 0.00, NULL, NULL, NULL, '1', '2024-02-23 14:12:49', '1', '2024-02-23 14:12:51', '0', 1), (7, 'hhhh', 'HT20240223000001', 14, NULL, NULL, 1, NULL, 0, '2024-02-13 00:00:00', NULL, NULL, 0.000000, 0.000000, 0.00, NULL, NULL, NULL, '1', '2024-02-23 16:35:12', '1', '2024-02-23 16:35:12', '0', 1), (8, '演示合同', 'HT20240224000001', 16, 12, NULL, 1, 'b65ac482-d2a6-11ee-a703-92ff8e2e5a3e', 10, '2024-02-07 00:00:00', NULL, NULL, 10110.300000, 30.000000, 7077.21, NULL, NULL, NULL, '1', '2024-02-24 07:51:48', '1', '2024-02-24 00:03:52', '1', 1), (9, '演示合同', 'HT20240224000002', 17, 13, NULL, 1, 'f26ee84a-d2a7-11ee-b20a-8adfac90dc14', 10, '2024-02-13 00:00:00', '2024-02-13 00:00:00', '2024-02-06 00:00:00', 20020.000000, 30.000000, 14014.00, 16, 104, NULL, '1', '2024-02-24 08:02:02', '1', '2024-02-24 00:03:54', '1', 1), (10, '演示合同', 'HT20240224000003', 16, 12, NULL, 1, '44d40c17-d2a8-11ee-b20a-8adfac90dc14', 20, '2024-02-07 00:00:00', '2024-02-20 00:00:00', '2024-02-06 00:00:00', 10110.300000, 20.000000, 8088.24, NULL, 1, NULL, '1', '2024-02-24 08:04:22', '1', '2024-02-24 08:07:37', '0', 1), (11, '哈哈哈哈', 'HT20240224000004', 17, 13, NULL, 1, NULL, 0, '2024-02-06 00:00:00', NULL, NULL, 20020.000000, 20.000000, 16016.00, NULL, NULL, NULL, '1', '2024-02-24 16:06:37', '1', '2024-02-24 16:06:37', '0', 1), (12, '测试过期合同', 'HT20240224000005', 16, 14, NULL, 1, '1e0ef39c-d2f9-11ee-9d72-262f9d5f4efd', 20, '2024-02-15 00:00:00', NULL, '2024-02-25 00:00:00', 0.000000, 0.000000, 0.00, NULL, NULL, NULL, '1', '2024-02-24 17:43:06', '1', '2024-02-24 17:43:13', '0', 1), (13, '演示回款的合同', 'HT20240225000001', 17, 13, NULL, 1, '7981141f-d3f3-11ee-853e-2ea58da017f0', 20, '2024-02-29 00:00:00', '2024-02-12 00:00:00', '2024-02-29 00:00:00', 20020.000000, 20.000000, 16016.00, 16, 1, NULL, '1', '2024-02-25 23:35:14', '1', '2024-02-25 23:35:36', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_contract_seq;
CREATE SEQUENCE crm_contract_seq
    START 3;

-- ----------------------------
-- Table structure for crm_contract_config
-- ----------------------------
DROP TABLE IF EXISTS crm_contract_config;
CREATE TABLE crm_contract_config (
    id int8 NOT NULL,
  notify_enabled int2 NULL DEFAULT NULL,
  notify_days int4 NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_contract_config ADD CONSTRAINT pk_crm_contract_config PRIMARY KEY (id);

COMMENT ON COLUMN crm_contract_config.id IS '编号';
COMMENT ON COLUMN crm_contract_config.notify_enabled IS '是否开启提前提醒';
COMMENT ON COLUMN crm_contract_config.notify_days IS '提前提醒天数';
COMMENT ON COLUMN crm_contract_config.creator IS '创建者';
COMMENT ON COLUMN crm_contract_config.create_time IS '创建时间';
COMMENT ON COLUMN crm_contract_config.updater IS '更新者';
COMMENT ON COLUMN crm_contract_config.update_time IS '更新时间';
COMMENT ON COLUMN crm_contract_config.deleted IS '是否删除';
COMMENT ON COLUMN crm_contract_config.tenant_id IS '租户编号';
COMMENT ON TABLE crm_contract_config IS 'CRM 合同配置表';

-- ----------------------------
-- Records of crm_contract_config
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_contract_config (id, notify_enabled, notify_days, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, 1, 7, '1', '2023-11-18 21:52:52', '1', '2024-02-24 16:50:53', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_contract_config_seq;
CREATE SEQUENCE crm_contract_config_seq
    START 2;

-- ----------------------------
-- Table structure for crm_contract_product
-- ----------------------------
DROP TABLE IF EXISTS crm_contract_product;
CREATE TABLE crm_contract_product (
    id int8 NOT NULL,
  contract_id int8 NOT NULL,
  product_id int8 NOT NULL,
  product_price numeric(24,6) NOT NULL,
  contract_price numeric(24,6) NOT NULL,
  count numeric(24,6) NOT NULL,
  total_price numeric(24,6) NOT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 1
);

ALTER TABLE crm_contract_product ADD CONSTRAINT pk_crm_contract_product PRIMARY KEY (id);

COMMENT ON COLUMN crm_contract_product.id IS '主键';
COMMENT ON COLUMN crm_contract_product.contract_id IS '合同编号';
COMMENT ON COLUMN crm_contract_product.product_id IS '产品编号';
COMMENT ON COLUMN crm_contract_product.product_price IS '产品单价';
COMMENT ON COLUMN crm_contract_product.contract_price IS '合同价格';
COMMENT ON COLUMN crm_contract_product.count IS '数量';
COMMENT ON COLUMN crm_contract_product.total_price IS '总计价格';
COMMENT ON COLUMN crm_contract_product.creator IS '创建者';
COMMENT ON COLUMN crm_contract_product.create_time IS '创建时间';
COMMENT ON COLUMN crm_contract_product.updater IS '更新者';
COMMENT ON COLUMN crm_contract_product.update_time IS '更新时间';
COMMENT ON COLUMN crm_contract_product.deleted IS '是否删除';
COMMENT ON COLUMN crm_contract_product.tenant_id IS '租户编号';
COMMENT ON TABLE crm_contract_product IS 'CRM 合同产品关联表';

-- ----------------------------
-- Records of crm_contract_product
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_contract_product (id, contract_id, product_id, product_price, contract_price, count, total_price, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (29, 5, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-21 16:35:59', '1', '2024-02-21 09:42:54', '1', 1), (30, 5, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-21 17:42:54', '1', '2024-02-21 17:42:54', '0', 1), (31, 5, 5, 100.300000, 200.000000, 1.000000, 200.000000, '1', '2024-02-21 17:42:54', '1', '2024-02-21 17:42:54', '0', 1), (32, 6, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-21 21:30:17', '1', '2024-02-21 21:30:17', '0', 1), (33, 4, 5, 100.300000, 100.300000, 1.000000, 100.300000, '1', '2024-02-23 00:04:37', '1', '2024-02-22 16:04:43', '1', 1), (34, 4, 5, 100.300000, 100.300000, 1.000000, 100.300000, '1', '2024-02-23 00:04:44', '1', '2024-02-22 16:19:54', '1', 1), (35, 4, 5, 100.300000, 100.300000, 1.000000, 100.300000, '1', '2024-02-23 00:04:44', '1', '2024-02-22 16:19:54', '1', 1), (36, 4, 4, 10010.000000, 220.000000, 1.000000, 220.000000, '1', '2024-02-23 00:19:54', '1', '2024-02-22 16:19:59', '1', 1), (37, 4, 5, 100.300000, 200.000000, 1.000000, 200.000000, '1', '2024-02-23 00:19:54', '1', '2024-02-22 16:19:59', '1', 1), (38, 4, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-23 08:44:12', '1', '2024-02-23 08:44:12', '0', 1), (39, 8, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 07:51:48', '1', '2024-02-24 07:51:48', '0', 1), (40, 8, 5, 100.300000, 100.300000, 1.000000, 100.300000, '1', '2024-02-24 07:51:48', '1', '2024-02-24 07:51:48', '0', 1), (41, 9, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 08:02:02', '1', '2024-02-24 08:02:02', '0', 1), (42, 9, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 08:02:02', '1', '2024-02-24 08:02:02', '0', 1), (43, 10, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 08:04:22', '1', '2024-02-24 08:04:22', '0', 1), (44, 10, 5, 100.300000, 100.300000, 1.000000, 100.300000, '1', '2024-02-24 08:04:22', '1', '2024-02-24 08:04:22', '0', 1), (45, 11, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 16:06:37', '1', '2024-02-24 16:06:37', '0', 1), (46, 11, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-24 16:06:37', '1', '2024-02-24 16:06:37', '0', 1), (47, 13, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-25 23:35:14', '1', '2024-02-25 23:35:14', '0', 1), (48, 13, 4, 10010.000000, 10010.000000, 1.000000, 10010.000000, '1', '2024-02-25 23:35:14', '1', '2024-02-25 23:35:14', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_contract_product_seq;
CREATE SEQUENCE crm_contract_product_seq
    START 30;

-- ----------------------------
-- Table structure for crm_customer
-- ----------------------------
DROP TABLE IF EXISTS crm_customer;
CREATE TABLE crm_customer (
    id int8 NOT NULL,
  name varchar(255) NULL DEFAULT NULL,
  follow_up_status int2 NOT NULL DEFAULT 0,
  contact_last_time timestamp NULL DEFAULT NULL,
  contact_last_content varchar(255) NULL DEFAULT NULL,
  contact_next_time timestamp NULL DEFAULT NULL,
  owner_user_id int8 NULL DEFAULT NULL,
  owner_time timestamp NOT NULL,
  lock_status bool NOT NULL DEFAULT '0',
  deal_status bool NOT NULL DEFAULT '0',
  mobile varchar(20) NULL DEFAULT NULL,
  telephone varchar(20) NULL DEFAULT NULL,
  qq varchar(20) NULL DEFAULT NULL,
  wechat varchar(255) NULL DEFAULT NULL,
  email varchar(255) NULL DEFAULT NULL,
  area_id int8 NULL DEFAULT NULL,
  detail_address varchar(255) NULL DEFAULT NULL,
  industry_id int4 NULL DEFAULT NULL,
  level int4 NULL DEFAULT NULL,
  source int4 NULL DEFAULT NULL,
  remark varchar(500) NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_customer ADD CONSTRAINT pk_crm_customer PRIMARY KEY (id);

CREATE INDEX idx_crm_customer_01 ON crm_customer (owner_user_id);

COMMENT ON COLUMN crm_customer.id IS '编号，主键自增';
COMMENT ON COLUMN crm_customer.name IS '客户名称';
COMMENT ON COLUMN crm_customer.follow_up_status IS '跟进状态';
COMMENT ON COLUMN crm_customer.contact_last_time IS '最后跟进时间';
COMMENT ON COLUMN crm_customer.contact_last_content IS '最后跟进内容';
COMMENT ON COLUMN crm_customer.contact_next_time IS '下次联系时间';
COMMENT ON COLUMN crm_customer.owner_user_id IS '负责人的用户编号';
COMMENT ON COLUMN crm_customer.owner_time IS '成为负责人的时间';
COMMENT ON COLUMN crm_customer.lock_status IS '锁定状态';
COMMENT ON COLUMN crm_customer.deal_status IS '成交状态';
COMMENT ON COLUMN crm_customer.mobile IS '手机';
COMMENT ON COLUMN crm_customer.telephone IS '电话';
COMMENT ON COLUMN crm_customer.qq IS 'QQ';
COMMENT ON COLUMN crm_customer.wechat IS '微信';
COMMENT ON COLUMN crm_customer.email IS '邮箱';
COMMENT ON COLUMN crm_customer.area_id IS '地区编号';
COMMENT ON COLUMN crm_customer.detail_address IS '详细地址';
COMMENT ON COLUMN crm_customer.industry_id IS '所属行业';
COMMENT ON COLUMN crm_customer.level IS '客户等级';
COMMENT ON COLUMN crm_customer.source IS '客户来源';
COMMENT ON COLUMN crm_customer.remark IS '备注';
COMMENT ON COLUMN crm_customer.creator IS '创建者';
COMMENT ON COLUMN crm_customer.create_time IS '创建时间';
COMMENT ON COLUMN crm_customer.updater IS '更新者';
COMMENT ON COLUMN crm_customer.update_time IS '更新时间';
COMMENT ON COLUMN crm_customer.deleted IS '是否删除';
COMMENT ON COLUMN crm_customer.tenant_id IS '租户编号';
COMMENT ON TABLE crm_customer IS 'CRM 客户表';

-- ----------------------------
-- Records of crm_customer
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_customer (id, name, follow_up_status, contact_last_time, contact_last_content, contact_next_time, owner_user_id, owner_time, lock_status, deal_status, mobile, telephone, qq, wechat, email, area_id, detail_address, industry_id, level, source, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (12, '测试公海逻辑', 0, NULL, NULL, '2024-02-20 19:28:59', 103, '2024-02-20 20:02:19', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-20 17:41:26', '1', '2024-02-20 20:02:19', '0', 1), (13, '呵呵哒', 0, NULL, NULL, NULL, NULL, '2024-02-20 20:17:42', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-20 20:17:42', '1', '2024-02-20 12:35:56', '0', 1), (14, '啦啦啦', 0, NULL, NULL, '2024-02-29 00:00:00', NULL, '2024-02-20 21:39:40', '0', '0', '18818260277', '18818260277', NULL, 'wang-server', NULL, 130304, '阿巴都', 2, 3, 1, NULL, '1', '2024-02-20 21:39:40', '1', '2024-02-23 14:30:34', '0', 1), (15, '小土豆', 0, NULL, NULL, '2024-03-02 00:00:00', NULL, '2024-02-23 00:09:46', '0', '0', '18248472642', NULL, NULL, NULL, '768423@qq.com', NULL, NULL, 2, 2, 3, NULL, '1', '2024-02-23 00:09:46', '1', '2024-02-23 14:23:35', '0', 1), (16, '演示线索', 1, '2024-02-24 15:42:41', '111', '2024-02-19 00:00:00', 1, '2024-02-23 21:16:14', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-02-23 21:16:14', '1', '2024-02-24 15:42:41', '0', 1), (17, '演示客户', 0, NULL, NULL, NULL, NULL, '2024-02-20 23:05:17', '0', '0', '18818260223', '18818260223', NULL, NULL, '768885413@qq.com', NULL, NULL, NULL, NULL, 1, NULL, '1', '2024-02-23 22:04:53', '1', '2024-02-26 01:36:21', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_customer_seq;
CREATE SEQUENCE crm_customer_seq
    START 13;

-- ----------------------------
-- Table structure for crm_customer_limit_config
-- ----------------------------
DROP TABLE IF EXISTS crm_customer_limit_config;
CREATE TABLE crm_customer_limit_config (
    id int8 NOT NULL,
  type int4 NOT NULL,
  user_ids varchar(2048) NULL DEFAULT '',
  dept_ids varchar(2048) NULL DEFAULT '',
  max_count int4 NOT NULL,
  deal_count_enabled int2 NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_customer_limit_config ADD CONSTRAINT pk_crm_customer_limit_config PRIMARY KEY (id);

COMMENT ON COLUMN crm_customer_limit_config.id IS '编号';
COMMENT ON COLUMN crm_customer_limit_config.type IS '规则类型 1: 拥有客户数限制，2:锁定客户数限制';
COMMENT ON COLUMN crm_customer_limit_config.user_ids IS '规则适用人群';
COMMENT ON COLUMN crm_customer_limit_config.dept_ids IS '规则适用部门';
COMMENT ON COLUMN crm_customer_limit_config.max_count IS '数量上限';
COMMENT ON COLUMN crm_customer_limit_config.deal_count_enabled IS '成交客户是否占有拥有客户数(当 type = 1 时)';
COMMENT ON COLUMN crm_customer_limit_config.creator IS '创建者';
COMMENT ON COLUMN crm_customer_limit_config.create_time IS '创建时间';
COMMENT ON COLUMN crm_customer_limit_config.updater IS '更新者';
COMMENT ON COLUMN crm_customer_limit_config.update_time IS '更新时间';
COMMENT ON COLUMN crm_customer_limit_config.deleted IS '是否删除';
COMMENT ON COLUMN crm_customer_limit_config.tenant_id IS '租户编号';
COMMENT ON TABLE crm_customer_limit_config IS 'CRM 客户限制配置表';

-- ----------------------------
-- Records of crm_customer_limit_config
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_customer_limit_config (id, type, user_ids, dept_ids, max_count, deal_count_enabled, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, 1, '1,103', '100', 999, 0, '1', '2023-11-18 22:04:11', '1', '2024-02-23 22:53:34', '0', 1), (2, 2, '104', '100', 1000, 0, '1', '2024-02-23 22:53:24', '1', '2024-02-23 22:53:29', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_customer_limit_config_seq;
CREATE SEQUENCE crm_customer_limit_config_seq
    START 2;

-- ----------------------------
-- Table structure for crm_customer_pool_config
-- ----------------------------
DROP TABLE IF EXISTS crm_customer_pool_config;
CREATE TABLE crm_customer_pool_config (
    id int8 NOT NULL,
  enabled int2 NOT NULL,
  contact_expire_days int4 NULL DEFAULT NULL,
  deal_expire_days int4 NULL DEFAULT NULL,
  notify_enabled int2 NULL DEFAULT NULL,
  notify_days int4 NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_customer_pool_config ADD CONSTRAINT pk_crm_customer_pool_config PRIMARY KEY (id);

COMMENT ON COLUMN crm_customer_pool_config.id IS '编号';
COMMENT ON COLUMN crm_customer_pool_config.enabled IS '是否启用客户公海';
COMMENT ON COLUMN crm_customer_pool_config.contact_expire_days IS '未跟进放入公海天数';
COMMENT ON COLUMN crm_customer_pool_config.deal_expire_days IS '未成交放入公海天数';
COMMENT ON COLUMN crm_customer_pool_config.notify_enabled IS '是否开启提前提醒';
COMMENT ON COLUMN crm_customer_pool_config.notify_days IS '提前提醒天数';
COMMENT ON COLUMN crm_customer_pool_config.creator IS '创建者';
COMMENT ON COLUMN crm_customer_pool_config.create_time IS '创建时间';
COMMENT ON COLUMN crm_customer_pool_config.updater IS '更新者';
COMMENT ON COLUMN crm_customer_pool_config.update_time IS '更新时间';
COMMENT ON COLUMN crm_customer_pool_config.deleted IS '是否删除';
COMMENT ON COLUMN crm_customer_pool_config.tenant_id IS '租户编号';
COMMENT ON TABLE crm_customer_pool_config IS 'CRM 客户公海配置表';

-- ----------------------------
-- Records of crm_customer_pool_config
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_customer_pool_config (id, enabled, contact_expire_days, deal_expire_days, notify_enabled, notify_days, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, 1, 31, 5, 1, 2, '1', '2023-11-18 21:52:52', '1', '2024-02-20 17:40:47', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_customer_pool_config_seq;
CREATE SEQUENCE crm_customer_pool_config_seq
    START 2;

-- ----------------------------
-- Table structure for crm_follow_up_record
-- ----------------------------
DROP TABLE IF EXISTS crm_follow_up_record;
CREATE TABLE crm_follow_up_record (
    id int8 NOT NULL,
  biz_type int4 NULL DEFAULT NULL,
  biz_id int8 NULL DEFAULT NULL,
  type int4 NULL DEFAULT NULL,
  content varchar(512) NULL DEFAULT '',
  next_time timestamp NULL DEFAULT NULL,
  pic_urls varchar(1024) NULL DEFAULT NULL,
  file_urls varchar(1024) NULL DEFAULT NULL,
  business_ids varchar(255) NULL DEFAULT '',
  contact_ids varchar(255) NULL DEFAULT '',
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_follow_up_record ADD CONSTRAINT pk_crm_follow_up_record PRIMARY KEY (id);

COMMENT ON COLUMN crm_follow_up_record.id IS '编号';
COMMENT ON COLUMN crm_follow_up_record.biz_type IS '数据类型';
COMMENT ON COLUMN crm_follow_up_record.biz_id IS '数据编号';
COMMENT ON COLUMN crm_follow_up_record.type IS '跟进类型';
COMMENT ON COLUMN crm_follow_up_record.content IS '跟进内容';
COMMENT ON COLUMN crm_follow_up_record.next_time IS '下次联系时间';
COMMENT ON COLUMN crm_follow_up_record.pic_urls IS '图片';
COMMENT ON COLUMN crm_follow_up_record.file_urls IS '附件';
COMMENT ON COLUMN crm_follow_up_record.business_ids IS '关联的商机编号数组';
COMMENT ON COLUMN crm_follow_up_record.contact_ids IS '关联的联系人编号数组';
COMMENT ON COLUMN crm_follow_up_record.creator IS '创建者';
COMMENT ON COLUMN crm_follow_up_record.create_time IS '创建时间';
COMMENT ON COLUMN crm_follow_up_record.updater IS '更新者';
COMMENT ON COLUMN crm_follow_up_record.update_time IS '更新时间';
COMMENT ON COLUMN crm_follow_up_record.deleted IS '是否删除';
COMMENT ON COLUMN crm_follow_up_record.tenant_id IS '租户编号';
COMMENT ON TABLE crm_follow_up_record IS 'CRM 跟进记录';

-- ----------------------------
-- Records of crm_follow_up_record
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_follow_up_record (id, biz_type, biz_id, type, content, next_time, pic_urls, file_urls, business_ids, contact_ids, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (2, 2, 4, 1, '<p>132312</p>', '2024-01-24 00:00:00', NULL, NULL, '', '', '1', '2024-01-15 20:49:30', '1', '2024-01-15 20:49:30', '0', 1), (3, 2, 2, 1, '吃饭、睡觉、打逗逗', '2023-12-31 00:00:00', 'http://test.yudao.iocoder.cn/bd16ec4f875e9739733f86bcf98f6a15735c1ffa9a7af907131c9debba043a18.png', NULL, '', '11', '1', '2024-01-22 09:35:23', '1', '2024-01-22 09:35:23', '0', 1), (4, 2, 3, 1, '11', '2024-02-06 00:00:00', NULL, NULL, '', '', '1', '2024-02-03 01:33:42', '1', '2024-02-03 01:33:42', '0', 1), (5, 2, 3, 1, '11', '2024-02-06 00:00:00', NULL, NULL, '', '', '1', '2024-02-03 01:33:56', '1', '2024-02-03 01:33:56', '0', 1), (6, 1, 2, 1, '啦啦啦啦', '2024-02-06 00:00:00', NULL, NULL, '', '', '1', '2024-02-19 20:01:17', '1', '2024-02-19 20:01:17', '0', 1), (7, 2, 5, 1, '啦啦啦啦', '2024-02-06 00:00:00', NULL, NULL, '', '', '1', '2024-02-19 20:18:47', '1', '2024-02-19 20:18:47', '0', 1), (8, 1, 4, 2, '啦啦啦', '2024-02-13 00:00:00', NULL, NULL, '', '', '1', '2024-02-19 21:38:37', '1', '2024-02-19 21:38:37', '0', 1), (9, 2, 7, 2, '啦啦啦', '2024-02-13 00:00:00', NULL, NULL, '', '', '1', '2024-02-19 22:15:27', '1', '2024-02-19 22:15:27', '0', 1), (10, 2, 2, 3, '小土豆', '2024-02-26 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:08:26', '1', '2024-02-20 13:08:26', '0', 1), (11, 2, 2, 3, '小土豆', '2024-02-26 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:08:33', '1', '2024-02-20 13:08:33', '0', 1), (12, 2, 2, 3, '小土豆', '2024-02-26 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:09:05', '1', '2024-02-20 13:09:05', '0', 1), (13, 2, 2, 3, '小土豆', '2024-02-26 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:09:07', '1', '2024-02-20 13:09:07', '0', 1), (14, 2, 2, 3, '小土豆', '2024-02-26 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:09:43', '1', '2024-02-20 13:09:43', '0', 1), (15, 2, 2, 3, '小土豆', '2024-02-26 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:10:11', '1', '2024-02-20 13:10:11', '0', 1), (16, 2, 2, 3, '小土豆', '2024-02-26 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:10:14', '1', '2024-02-20 13:10:14', '0', 1), (17, 2, 2, 2, '31231', '2024-02-06 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:11:23', '1', '2024-02-20 13:11:23', '0', 1), (18, 2, 2, 2, '31231', '2024-02-06 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:12:12', '1', '2024-02-20 13:12:12', '0', 1), (19, 2, 2, 2, '31231', '2024-02-06 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:14:55', '1', '2024-02-20 13:14:55', '0', 1), (20, 2, 2, 1, '来一个跟进记录', '2024-02-12 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:15:47', '1', '2024-02-20 13:15:47', '0', 1), (21, 2, 11, 2, '吧', '2024-02-15 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 13:16:40', '1', '2024-02-20 13:16:40', '0', 1), (22, 3, 12, 2, '111', '2024-02-21 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 23:15:35', '1', '2024-02-20 23:15:35', '0', 1), (23, 3, 12, 2, '111', '2024-02-21 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 23:17:05', '1', '2024-02-20 23:17:05', '0', 1), (24, 3, 13, 2, '啦啦啦', '2024-02-25 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 23:18:26', '1', '2024-02-20 23:18:26', '0', 1), (25, 3, 13, 2, '啦啦啦', '2024-02-25 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 23:18:56', '1', '2024-02-20 23:18:56', '0', 1), (26, 3, 13, 2, '啦啦啦', '2024-02-25 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 23:19:03', '1', '2024-02-20 23:19:03', '0', 1), (27, 3, 13, 2, '啦啦啦', '2024-02-25 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 23:19:25', '1', '2024-02-20 23:19:25', '0', 1), (28, 3, 13, 2, '啦啦啦', '2024-02-25 00:00:00', NULL, NULL, '', '', '1', '2024-02-20 23:20:19', '1', '2024-02-20 23:20:19', '0', 1), (29, 4, 6, 2, '哈哈哈', '2024-02-20 00:00:00', NULL, NULL, '', '', '1', '2024-02-21 23:35:46', '1', '2024-02-21 23:35:46', '0', 1), (30, 5, 4, 1, '阿巴阿巴', '2024-02-20 00:00:00', NULL, NULL, '', '', '1', '2024-02-23 09:30:41', '1', '2024-02-23 09:30:41', '0', 1), (31, 2, 16, 1, '阿巴阿巴', '2024-02-13 00:00:00', 'null', 'null', '13', '16', '1', '2024-02-24 11:16:42', '1', '2024-02-24 11:16:42', '0', 1), (32, 2, 16, 1, '哈哈哈哈', '2024-02-07 00:00:00', NULL, NULL, '', '16,13,13', '1', '2024-02-24 11:43:05', '1', '2024-02-24 11:43:05', '0', 1), (33, 2, 16, 1, '111', '2024-02-19 00:00:00', NULL, NULL, '', '17', '1', '2024-02-24 15:42:41', '1', '2024-02-24 07:43:59', '1', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_follow_up_record_seq;
CREATE SEQUENCE crm_follow_up_record_seq
    START 3;

-- ----------------------------
-- Table structure for crm_permission
-- ----------------------------
DROP TABLE IF EXISTS crm_permission;
CREATE TABLE crm_permission (
    id int8 NOT NULL,
  biz_type int2 NOT NULL DEFAULT 100,
  biz_id int8 NOT NULL DEFAULT 0,
  user_id int8 NOT NULL DEFAULT 0,
  level int4 NOT NULL DEFAULT 0,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_permission ADD CONSTRAINT pk_crm_permission PRIMARY KEY (id);

COMMENT ON COLUMN crm_permission.id IS '编号';
COMMENT ON COLUMN crm_permission.biz_type IS '数据类型';
COMMENT ON COLUMN crm_permission.biz_id IS '数据编号';
COMMENT ON COLUMN crm_permission.user_id IS '用户编号';
COMMENT ON COLUMN crm_permission.level IS '会员等级';
COMMENT ON COLUMN crm_permission.creator IS '创建者';
COMMENT ON COLUMN crm_permission.create_time IS '创建时间';
COMMENT ON COLUMN crm_permission.updater IS '更新者';
COMMENT ON COLUMN crm_permission.update_time IS '更新时间';
COMMENT ON COLUMN crm_permission.deleted IS '是否删除';
COMMENT ON COLUMN crm_permission.tenant_id IS '租户编号';
COMMENT ON TABLE crm_permission IS 'CRM 数据权限表';

-- ----------------------------
-- Records of crm_permission
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_permission (id, biz_type, biz_id, user_id, level, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (21, 2, 2, 1, 1, '1', '2023-11-25 10:38:05', '1', '2023-12-26 22:20:30', '1', 1), (22, 3, 9, 1, 1, '1', '2023-11-29 14:02:45', '1', '2023-11-29 14:02:45', '0', 1), (25, 6, 4, 1, 1, '1', '2023-12-06 09:10:06', '1', '2023-12-06 09:10:06', '0', 1), (26, 2, 3, 1, 1, '1', '2023-12-30 20:59:05', '1', '2024-02-02 17:37:29', '1', 1), (27, 2, 3, 114, 3, '1', '2024-01-03 14:38:54', '1', '2024-01-03 14:42:46', '0', 1), (28, 2, 3, 103, 2, '1', '2024-01-03 14:42:55', '1', '2024-01-03 14:42:55', '0', 1), (29, 3, 11, 1, 1, '1', '2024-01-03 23:16:54', '1', '2024-01-03 23:16:54', '0', 1), (30, 6, 5, 1, 1, '1', '2024-01-13 10:13:33', '1', '2024-01-13 10:13:33', '0', 1), (31, 2, 4, 1, 1, '1', '2024-01-15 13:49:09', '1', '2023-12-29 19:52:55', '1', 1), (32, 2, 2, 1, 1, '1', '2024-01-20 19:16:32', '1', '2024-01-20 19:16:32', '0', 1), (33, 1, 1, 1, 1, '1', '2024-01-22 09:38:05', '1', '2024-01-22 09:38:05', '0', 1), (34, 5, 2, 1, 1, '1', '2024-02-01 13:24:26', '1', '2024-02-01 13:24:26', '0', 1), (35, 5, 3, 1, 1, '1', '2024-02-01 13:26:04', '1', '2024-02-01 13:26:04', '0', 1), (36, 1, 2, 1, 2, '1', '2024-02-19 18:56:35', '1', '2024-02-19 20:37:24', '0', 1), (37, 2, 5, 1, 1, '1', '2024-02-19 20:18:47', '1', '2024-02-19 20:18:47', '0', 1), (38, 1, 2, 103, 1, '1', '2024-02-19 20:37:24', '1', '2024-02-19 20:37:24', '0', 1), (39, 1, 3, 1, 1, '1', '2024-02-19 21:02:00', '1', '2024-02-19 13:03:32', '1', 1), (40, 2, 6, 1, 1, '1', '2024-02-19 21:02:42', '1', '2024-02-19 21:02:42', '0', 1), (41, 1, 4, 1, 1, '1', '2024-02-19 21:38:16', '1', '2024-02-19 21:38:16', '0', 1), (42, 2, 7, 1, 1, '1', '2024-02-19 22:15:27', '1', '2024-02-19 22:15:27', '0', 1), (43, 1, 5, 1, 1, '1', '2024-02-19 22:16:35', '1', '2024-02-19 22:16:35', '0', 1), (44, 2, 8, 1, 1, '1', '2024-02-19 22:16:38', '1', '2024-02-19 22:16:38', '0', 1), (45, 1, 6, 1, 1, '1', '2024-02-19 22:17:08', '1', '2024-02-19 22:17:08', '0', 1), (46, 2, 9, 1, 1, '1', '2024-02-19 22:17:12', '1', '2024-02-19 22:17:12', '0', 1), (47, 1, 7, 1, 1, '1', '2024-02-19 22:24:30', '1', '2024-02-19 22:24:30', '0', 1), (48, 2, 10, 1, 1, '1', '2024-02-19 22:46:36', '1', '2024-02-19 22:46:36', '0', 1), (49, 2, 11, 1, 1, '1', '2024-02-20 13:16:30', '1', '2024-02-20 13:16:30', '0', 1), (50, 2, 12, 1, 1, '1', '2024-02-20 17:41:26', '1', '2024-02-20 10:56:43', '1', 1), (51, 2, 12, 1, 1, '1', '2024-02-20 19:03:40', '1', '2024-02-20 11:40:59', '1', 1), (52, 2, 12, 103, 1, '1', '2024-02-20 20:02:20', '1', '2024-02-20 20:02:20', '0', 1), (53, 2, 13, 1, 1, '1', '2024-02-20 20:17:42', '1', '2024-02-20 12:35:56', '1', 1), (54, 3, 12, 1, 1, '1', '2024-02-20 21:10:57', '1', '2024-02-20 21:10:57', '0', 1), (55, 2, 14, 1, 1, '1', '2024-02-20 21:39:40', '1', '2024-02-23 14:30:34', '1', 1), (56, 3, 13, 1, 3, '1', '2024-02-20 23:18:16', '1', '2024-02-20 23:21:14', '0', 1), (57, 3, 13, 112, 1, '1', '2024-02-20 23:21:14', '1', '2024-02-20 23:21:14', '0', 1), (58, 3, 14, 1, 1, '1', '2024-02-20 23:27:33', '1', '2024-02-20 23:27:33', '0', 1), (59, 4, 4, 1, 1, '1', '2024-02-20 23:27:33', '1', '2024-02-21 13:52:06', '1', 1), (60, 4, 5, 1, 1, '1', '2024-02-21 16:35:59', '1', '2024-02-21 16:35:59', '0', 1), (61, 4, 6, 1, 1, '1', '2024-02-21 21:30:17', '1', '2024-02-21 21:30:17', '0', 1), (62, 4, 7, 1, 1, '1', '2024-02-21 21:48:20', '1', '2024-02-21 21:48:20', '0', 1), (63, 4, 8, 1, 1, '1', '2024-02-21 21:49:29', '1', '2024-02-21 15:49:26', '1', 1), (64, 4, 8, 103, 1, '1', '2024-02-21 23:49:27', '1', '2024-02-21 23:49:27', '0', 1), (65, 4, 7, 104, 3, '1', '2024-02-21 23:53:27', '1', '2024-02-21 23:53:27', '0', 1), (66, 3, 15, 1, 1, '1', '2024-02-22 09:08:12', '1', '2024-02-22 09:08:12', '0', 1), (67, 4, 9, 1, 1, '1', '2024-02-22 09:32:06', '1', '2024-02-22 09:32:06', '0', 1), (68, 4, 10, 1, 1, '1', '2024-02-22 19:55:25', '1', '2024-02-22 19:55:25', '0', 1), (69, 4, 11, 1, 1, '1', '2024-02-22 20:40:54', '1', '2024-02-22 20:40:54', '0', 1), (70, 5, 4, 1, 1, '1', '2024-02-22 23:50:39', '1', '2024-02-22 23:50:39', '0', 1), (71, 2, 15, 1, 1, '1', '2024-02-23 00:09:46', '1', '2024-02-23 14:23:35', '1', 1), (72, 5, 5, 1, 1, '1', '2024-02-23 13:03:39', '1', '2024-02-23 13:03:39', '0', 1), (73, 5, 6, 1, 1, '1', '2024-02-23 14:12:49', '1', '2024-02-23 14:12:49', '0', 1), (74, 5, 7, 1, 1, '1', '2024-02-23 16:35:12', '1', '2024-02-23 16:35:12', '0', 1), (75, 1, 8, 1, 1, '1', '2024-02-23 21:04:05', '1', '2024-02-23 21:04:05', '0', 1), (76, 2, 16, 1, 1, '1', '2024-02-23 21:16:14', '1', '2024-02-23 21:16:14', '0', 1), (77, 2, 17, 1, 1, '1', '2024-02-23 22:04:53', '1', '2024-02-23 14:16:40', '1', 1), (78, 2, 17, 1, 1, '1', '2024-02-23 23:05:17', '1', '2024-02-26 01:36:21', '1', 1), (79, 3, 16, 1, 1, '1', '2024-02-23 23:16:43', '1', '2024-02-23 23:16:43', '0', 1), (80, 4, 12, 1, 1, '1', '2024-02-24 00:12:04', '1', '2024-02-24 00:12:04', '0', 1), (81, 4, 13, 1, 1, '1', '2024-02-24 00:23:03', '1', '2024-02-24 00:23:03', '0', 1), (82, 5, 8, 1, 1, '1', '2024-02-24 07:51:48', '1', '2024-02-24 00:03:52', '1', 1), (83, 5, 9, 1, 1, '1', '2024-02-24 08:02:02', '1', '2024-02-24 00:03:54', '1', 1), (84, 5, 10, 1, 1, '1', '2024-02-24 08:04:22', '1', '2024-02-24 08:04:22', '0', 1), (85, 6, 6, 1, 1, '1', '2024-02-24 09:46:17', '1', '2024-02-24 09:46:17', '0', 1), (86, 4, 14, 1, 1, '1', '2024-02-24 14:50:30', '1', '2024-02-24 14:50:30', '0', 1), (87, 3, 17, 1, 1, '1', '2024-02-24 15:30:39', '1', '2024-02-24 15:30:39', '0', 1), (88, 5, 11, 1, 1, '1', '2024-02-24 16:06:37', '1', '2024-02-24 16:06:37', '0', 1), (89, 5, 12, 1, 1, '1', '2024-02-24 17:43:06', '1', '2024-02-24 17:43:06', '0', 1), (90, 8, 2, 1, 1, '1', '2024-02-25 08:24:09', '1', '2024-02-25 08:24:09', '0', 1), (91, 7, 11, 1, 1, '1', '2024-02-25 09:17:22', '1', '2024-02-25 09:17:22', '0', 1), (92, 8, 3, 1, 1, '1', '2024-02-25 15:59:23', '1', '2024-02-25 15:59:23', '0', 1), (93, 8, 4, 1, 1, '1', '2024-02-25 16:08:57', '1', '2024-02-25 16:08:57', '0', 1), (94, 7, 12, 1, 1, '1', '2024-02-25 17:19:54', '1', '2024-02-25 17:19:54', '0', 1), (95, 7, 13, 1, 1, '1', '2024-02-25 18:13:42', '1', '2024-02-25 18:13:42', '0', 1), (96, 8, 5, 1, 1, '1', '2024-02-25 18:24:00', '1', '2024-02-25 18:24:00', '0', 1), (97, 7, 14, 1, 1, '1', '2024-02-25 18:24:42', '1', '2024-02-25 18:24:42', '0', 1), (98, 7, 15, 1, 1, '1', '2024-02-25 18:27:45', '1', '2024-02-25 18:27:45', '0', 1), (99, 7, 16, 1, 1, '1', '2024-02-25 18:28:37', '1', '2024-02-25 18:28:37', '0', 1), (100, 7, 17, 1, 1, '1', '2024-02-25 18:29:47', '1', '2024-02-25 18:29:47', '0', 1), (101, 7, 18, 1, 1, '1', '2024-02-25 18:30:08', '1', '2024-02-25 18:30:08', '0', 1), (102, 7, 19, 1, 1, '1', '2024-02-25 18:31:00', '1', '2024-02-25 18:31:00', '0', 1), (103, 7, 20, 1, 1, '1', '2024-02-25 18:32:10', '1', '2024-02-25 18:32:10', '0', 1), (104, 7, 21, 1, 1, '1', '2024-02-25 18:32:27', '1', '2024-02-25 18:32:27', '0', 1), (105, 7, 22, 1, 1, '1', '2024-02-25 18:33:35', '1', '2024-02-25 18:33:35', '0', 1), (106, 7, 23, 1, 1, '1', '2024-02-25 18:43:59', '1', '2024-02-25 18:43:59', '0', 1), (107, 7, 23, 114, 2, '1', '2024-02-25 19:32:14', '1', '2024-02-25 19:32:14', '0', 1), (108, 7, 24, 1, 1, '1', '2024-02-25 19:59:06', '1', '2024-02-25 19:59:06', '0', 1), (109, 8, 6, 1, 1, '1', '2024-02-25 20:11:49', '1', '2024-02-25 20:11:49', '0', 1), (110, 7, 25, 1, 1, '1', '2024-02-25 20:17:52', '1', '2024-02-25 20:17:52', '0', 1), (111, 7, 26, 1, 1, '1', '2024-02-25 20:21:12', '1', '2024-02-25 20:21:12', '0', 1), (112, 7, 27, 1, 1, '1', '2024-02-25 20:22:36', '1', '2024-02-25 20:22:36', '0', 1), (113, 7, 28, 1, 1, '1', '2024-02-25 20:49:27', '1', '2024-02-25 20:49:27', '0', 1), (114, 5, 13, 1, 1, '1', '2024-02-25 23:35:14', '1', '2024-02-25 23:35:14', '0', 1), (115, 7, 29, 1, 1, '1', '2024-02-25 23:40:10', '1', '2024-02-25 23:40:10', '0', 1), (116, 8, 7, 1, 1, '1', '2024-02-26 00:08:48', '1', '2024-02-26 00:08:48', '0', 1), (117, 8, 8, 1, 1, '1', '2024-02-26 00:11:02', '1', '2024-02-26 00:11:02', '0', 1), (118, 7, 30, 1, 1, '1', '2024-02-26 09:37:07', '1', '2024-02-26 09:37:07', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_permission_seq;
CREATE SEQUENCE crm_permission_seq
    START 22;

-- ----------------------------
-- Table structure for crm_product
-- ----------------------------
DROP TABLE IF EXISTS crm_product;
CREATE TABLE crm_product (
    id int8 NOT NULL,
  name varchar(100) NOT NULL,
  no varchar(20) NOT NULL,
  unit int2 NULL DEFAULT NULL,
  price numeric(24,6) NULL DEFAULT 0.000000,
  status int2 NOT NULL DEFAULT 1,
  category_id int8 NOT NULL,
  description varchar(100) NULL DEFAULT NULL,
  owner_user_id int8 NOT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  tenant_id int8 NOT NULL DEFAULT 0,
  deleted int2 NOT NULL DEFAULT 0
);

ALTER TABLE crm_product ADD CONSTRAINT pk_crm_product PRIMARY KEY (id);

COMMENT ON COLUMN crm_product.id IS '产品编号';
COMMENT ON COLUMN crm_product.name IS '产品名称';
COMMENT ON COLUMN crm_product.no IS '产品编码';
COMMENT ON COLUMN crm_product.unit IS '单位';
COMMENT ON COLUMN crm_product.price IS '价格，单位：元';
COMMENT ON COLUMN crm_product.status IS '状态';
COMMENT ON COLUMN crm_product.category_id IS '产品分类编号';
COMMENT ON COLUMN crm_product.description IS '产品描述';
COMMENT ON COLUMN crm_product.owner_user_id IS '负责人的用户编号';
COMMENT ON COLUMN crm_product.creator IS '创建者';
COMMENT ON COLUMN crm_product.create_time IS '创建时间';
COMMENT ON COLUMN crm_product.updater IS '更新者';
COMMENT ON COLUMN crm_product.update_time IS '更新时间';
COMMENT ON COLUMN crm_product.tenant_id IS '租户编号';
COMMENT ON COLUMN crm_product.deleted IS '是否删除';
COMMENT ON TABLE crm_product IS 'CRM 产品表';

-- ----------------------------
-- Records of crm_product
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_product (id, name, no, unit, price, status, category_id, description, owner_user_id, creator, create_time, updater, update_time, tenant_id, deleted) VALUES (3, '商品001', 'X001', 1, 100.000000, 1, 1, '我就介绍下', 1, '1', '2023-12-05 14:52:01', '', '2023-12-05 15:04:59', 1, '0'), (4, '商品002', 'Q200', 1, 10010.000000, 0, 2, NULL, 1, '1', '2023-12-06 09:10:06', '1', '2023-12-06 12:31:01', 1, '0'), (5, '我是产品', 'A110', 1, 100.300000, 0, 2, '啦啦啦啦', 1, '1', '2024-01-13 10:13:33', '1', '2024-02-21 11:23:11', 1, '0'), (6, '演示产品', 'A8523', 3, 10.000000, 0, 2, NULL, 1, '1', '2024-02-24 09:46:17', '1', '2024-02-24 09:46:17', 1, '0');
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_product_seq;
CREATE SEQUENCE crm_product_seq
    START 4;

-- ----------------------------
-- Table structure for crm_product_category
-- ----------------------------
DROP TABLE IF EXISTS crm_product_category;
CREATE TABLE crm_product_category (
    id int8 NOT NULL,
  name varchar(100) NOT NULL,
  parent_id int8 NOT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_product_category ADD CONSTRAINT pk_crm_product_category PRIMARY KEY (id);

COMMENT ON COLUMN crm_product_category.id IS '分类编号';
COMMENT ON COLUMN crm_product_category.name IS '分类名称';
COMMENT ON COLUMN crm_product_category.parent_id IS '父级编号';
COMMENT ON COLUMN crm_product_category.creator IS '创建者';
COMMENT ON COLUMN crm_product_category.create_time IS '创建时间';
COMMENT ON COLUMN crm_product_category.updater IS '更新者';
COMMENT ON COLUMN crm_product_category.update_time IS '更新时间';
COMMENT ON COLUMN crm_product_category.deleted IS '是否删除';
COMMENT ON COLUMN crm_product_category.tenant_id IS '租户编号';
COMMENT ON TABLE crm_product_category IS 'CRM 产品分类表';

-- ----------------------------
-- Records of crm_product_category
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_product_category (id, name, parent_id, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (1, '普通分类', 0, '', '2023-12-05 14:54:34', '', '2023-12-05 14:54:37', '0', 1), (2, '二级分类', 1, '', '2023-12-06 01:09:27', '1', '2024-02-24 08:59:02', '0', 1), (6, '另外一个分类', 0, '1', '2023-12-06 12:55:07', '1', '2023-12-06 12:55:07', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_product_category_seq;
CREATE SEQUENCE crm_product_category_seq
    START 2;

-- ----------------------------
-- Table structure for crm_receivable
-- ----------------------------
DROP TABLE IF EXISTS crm_receivable;
CREATE TABLE crm_receivable (
    id int8 NOT NULL,
  no varchar(100) NOT NULL,
  plan_id int8 NULL DEFAULT NULL,
  customer_id int8 NOT NULL,
  contract_id int8 NOT NULL,
  owner_user_id int8 NULL DEFAULT NULL,
  audit_status int2 NOT NULL,
  process_instance_id varchar(64) NULL DEFAULT NULL,
  return_time timestamp NULL DEFAULT NULL,
  return_type int4 NULL DEFAULT NULL,
  price numeric(24,6) NOT NULL,
  remark varchar(500) NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_receivable ADD CONSTRAINT pk_crm_receivable PRIMARY KEY (id);

COMMENT ON COLUMN crm_receivable.id IS 'ID';
COMMENT ON COLUMN crm_receivable.no IS '回款编号';
COMMENT ON COLUMN crm_receivable.plan_id IS '回款计划ID';
COMMENT ON COLUMN crm_receivable.customer_id IS '客户ID';
COMMENT ON COLUMN crm_receivable.contract_id IS '合同ID';
COMMENT ON COLUMN crm_receivable.owner_user_id IS '负责人的用户编号';
COMMENT ON COLUMN crm_receivable.audit_status IS '审批状态';
COMMENT ON COLUMN crm_receivable.process_instance_id IS '工作流编号';
COMMENT ON COLUMN crm_receivable.return_time IS '回款日期';
COMMENT ON COLUMN crm_receivable.return_type IS '回款方式';
COMMENT ON COLUMN crm_receivable.price IS '回款金额';
COMMENT ON COLUMN crm_receivable.remark IS '备注';
COMMENT ON COLUMN crm_receivable.creator IS '创建者';
COMMENT ON COLUMN crm_receivable.create_time IS '创建时间';
COMMENT ON COLUMN crm_receivable.updater IS '更新者';
COMMENT ON COLUMN crm_receivable.update_time IS '更新时间';
COMMENT ON COLUMN crm_receivable.deleted IS '是否删除';
COMMENT ON COLUMN crm_receivable.tenant_id IS '租户编号';
COMMENT ON TABLE crm_receivable IS 'CRM 回款表';

-- ----------------------------
-- Records of crm_receivable
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_receivable (id, no, plan_id, customer_id, contract_id, owner_user_id, audit_status, process_instance_id, return_time, return_type, price, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (10, 'Q233', 1, 2, 1, 1, 20, NULL, '2024-02-02 19:02:17', 1, 88.000000, NULL, '1', '2023-12-01 10:44:16', '', '2024-02-02 17:06:38', '0', 1), (11, 'AAA', 2, 16, 12, 1, 0, NULL, '2024-02-14 00:00:00', 2, 52.000000, '1000', '1', '2024-02-25 09:17:22', '1', '2024-02-25 09:17:22', '0', 1), (13, 'HK20240225000001', NULL, 16, 12, 1, 0, NULL, '2024-02-27 00:00:00', 3, 10.000000, '哈哈哈哈', '1', '2024-02-25 18:13:42', '1', '2024-02-25 18:13:42', '0', 1), (14, 'HK20240225000002', 5, 16, 12, 1, 0, NULL, '2024-02-27 00:00:00', 4, 20.000000, '哈哈哈哈', '1', '2024-02-25 18:24:42', '1', '2024-02-25 18:25:10', '0', 1), (15, 'HK20240225000003', 5, 16, 12, 1, 0, NULL, '2024-02-14 00:00:00', 4, 10.000000, NULL, '1', '2024-02-25 18:27:45', '1', '2024-02-25 18:27:45', '0', 1), (16, 'HK20240225000004', 5, 16, 12, 1, 0, NULL, '2024-02-19 00:00:00', 4, 10.000000, NULL, '1', '2024-02-25 18:28:37', '1', '2024-02-25 18:28:37', '0', 1), (17, 'HK20240225000005', 5, 16, 12, 1, 0, NULL, '2024-02-27 00:00:00', 4, 10.000000, NULL, '1', '2024-02-25 18:29:47', '1', '2024-02-25 18:29:47', '0', 1), (18, 'HK20240225000006', 5, 16, 12, 1, 0, NULL, '2024-02-27 00:00:00', 4, 10.000000, NULL, '1', '2024-02-25 18:30:08', '1', '2024-02-25 18:30:08', '0', 1), (19, 'HK20240225000007', 5, 16, 12, 1, 0, NULL, '2024-03-04 00:00:00', 4, 10.000000, '31321', '1', '2024-02-25 18:31:00', '1', '2024-02-25 18:31:00', '0', 1), (20, 'HK20240225000008', NULL, 16, 12, 1, 0, NULL, '2024-02-29 00:00:00', 5, 0.000000, NULL, '1', '2024-02-25 18:32:10', '1', '2024-02-25 18:32:10', '0', 1), (21, 'HK20240225000009', 5, 16, 12, 1, 0, NULL, '2024-02-19 00:00:00', 4, 10.000000, NULL, '1', '2024-02-25 18:32:27', '1', '2024-02-25 18:32:27', '0', 1), (22, 'HK20240225000010', 5, 16, 12, 1, 0, NULL, '2024-02-28 00:00:00', 4, 10.000000, '32321', '1', '2024-02-25 18:33:35', '1', '2024-02-25 19:58:45', '0', 1), (23, 'HK20240225000011', 4, 16, 12, 1, 20, '8886586f-d3d3-11ee-aa2f-26aa5e0b65cc', '2024-02-29 00:00:00', 2, 10.000000, '哈哈哈哈111', '1', '2024-02-25 18:43:59', '1', '2024-02-25 19:51:00', '0', 1), (24, 'HK20240225000012', NULL, 16, 12, 1, 0, NULL, '2024-02-16 00:00:00', 1, 0.000000, '3232312', '1', '2024-02-25 19:59:06', '1', '2024-02-25 19:59:06', '0', 1), (25, 'HK20240225000013', 6, 16, 12, 1, 0, NULL, '2024-02-15 00:00:00', 3, 10.000000, '132312', '1', '2024-02-25 20:17:52', '1', '2024-02-25 20:17:52', '0', 1), (26, 'HK20240225000014', NULL, 16, 12, 1, 0, NULL, '2024-02-14 00:00:00', 4, 0.000000, '10000', '1', '2024-02-25 20:21:12', '1', '2024-02-25 20:21:12', '0', 1), (27, 'HK20240225000015', NULL, 16, 12, 1, 0, NULL, '2024-02-27 00:00:00', 4, 0.000000, '1111', '1', '2024-02-25 20:22:36', '1', '2024-02-25 20:22:36', '0', 1), (28, 'HK20240225000016', NULL, 16, 10, 1, 20, '59503b13-d3dc-11ee-853e-2ea58da017f0', '2024-02-16 00:00:00', NULL, 888.000000, NULL, '1', '2024-02-25 20:49:27', '1', '2024-02-25 20:49:47', '0', 1), (29, 'HK20240225000017', NULL, 17, 13, 1, 20, 'a213f8bb-d3f5-11ee-853e-2ea58da017f0', '2024-02-28 00:00:00', NULL, 16016.000000, NULL, '1', '2024-02-25 23:40:10', '1', '2024-02-25 23:52:28', '0', 1), (30, 'HK20240226000001', NULL, 16, 10, 1, 10, '9f398f3c-d447-11ee-ac04-62f15b703df8', '2024-02-27 00:00:00', NULL, 222.000000, 'hhhh', '1', '2024-02-26 09:37:07', '1', '2024-02-26 09:37:38', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_receivable_seq;
CREATE SEQUENCE crm_receivable_seq
    START 11;

-- ----------------------------
-- Table structure for crm_receivable_plan
-- ----------------------------
DROP TABLE IF EXISTS crm_receivable_plan;
CREATE TABLE crm_receivable_plan (
    id int8 NOT NULL,
  period int8 NOT NULL,
  customer_id int8 NOT NULL,
  contract_id int8 NOT NULL,
  owner_user_id int8 NULL DEFAULT NULL,
  receivable_id int8 NULL DEFAULT NULL,
  return_time timestamp NULL DEFAULT NULL,
  return_type int2 NULL DEFAULT NULL,
  price numeric(24,6) NOT NULL,
  remind_days int8 NULL DEFAULT NULL,
  remind_time timestamp NULL DEFAULT NULL,
  remark varchar(500) NULL DEFAULT NULL,
  creator varchar(64) NULL DEFAULT '',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updater varchar(64) NULL DEFAULT '',
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted int2 NOT NULL DEFAULT 0,
  tenant_id int8 NOT NULL DEFAULT 0
);

ALTER TABLE crm_receivable_plan ADD CONSTRAINT pk_crm_receivable_plan PRIMARY KEY (id);

COMMENT ON COLUMN crm_receivable_plan.id IS 'ID';
COMMENT ON COLUMN crm_receivable_plan.period IS '期数';
COMMENT ON COLUMN crm_receivable_plan.customer_id IS '客户编号';
COMMENT ON COLUMN crm_receivable_plan.contract_id IS '合同编号';
COMMENT ON COLUMN crm_receivable_plan.owner_user_id IS '负责人编号';
COMMENT ON COLUMN crm_receivable_plan.receivable_id IS '回款编号';
COMMENT ON COLUMN crm_receivable_plan.return_time IS '计划回款日期';
COMMENT ON COLUMN crm_receivable_plan.return_type IS '计划还款方式';
COMMENT ON COLUMN crm_receivable_plan.price IS '计划回款金额';
COMMENT ON COLUMN crm_receivable_plan.remind_days IS '提前几天提醒';
COMMENT ON COLUMN crm_receivable_plan.remind_time IS '提醒日期';
COMMENT ON COLUMN crm_receivable_plan.remark IS '备注';
COMMENT ON COLUMN crm_receivable_plan.creator IS '创建者';
COMMENT ON COLUMN crm_receivable_plan.create_time IS '创建时间';
COMMENT ON COLUMN crm_receivable_plan.updater IS '更新者';
COMMENT ON COLUMN crm_receivable_plan.update_time IS '更新时间';
COMMENT ON COLUMN crm_receivable_plan.deleted IS '是否删除';
COMMENT ON COLUMN crm_receivable_plan.tenant_id IS '租户编号';
COMMENT ON TABLE crm_receivable_plan IS 'CRM 回款计划表';

-- ----------------------------
-- Records of crm_receivable_plan
-- ----------------------------
-- @formatter:off
BEGIN;
INSERT INTO crm_receivable_plan (id, period, customer_id, contract_id, owner_user_id, receivable_id, return_time, return_type, price, remind_days, remind_time, remark, creator, create_time, updater, update_time, deleted, tenant_id) VALUES (4, 1, 16, 12, 1, 23, '2024-02-16 00:00:00', 2, 10.000000, 10, '2024-02-06 00:00:00', 'llll', '1', '2024-02-25 16:08:57', '1', '2024-02-25 18:43:59', '0', 1), (5, 2, 16, 12, 1, 22, '2024-02-27 00:00:00', 4, 10.000000, NULL, NULL, NULL, '1', '2024-02-25 18:24:00', '1', '2024-02-25 18:33:35', '0', 1), (6, 3, 16, 12, 1, 25, '2024-02-20 00:00:00', 3, 10.000000, 10, '2024-02-10 00:00:00', '哈哈哈哈', '1', '2024-02-25 20:11:49', '1', '2024-02-25 20:17:52', '0', 1), (7, 4, 16, 12, 1, NULL, '2024-02-20 00:00:00', NULL, 1.000000, 10, '2024-02-10 00:00:00', NULL, '1', '2024-02-26 00:08:48', '1', '2024-02-26 01:47:41', '0', 1), (8, 1, 17, 13, 1, NULL, '2024-02-29 00:00:00', NULL, 220.000000, 10, '2024-02-10 00:00:00', NULL, '1', '2024-02-26 00:11:02', '1', '2024-02-26 01:47:42', '0', 1);
COMMIT;
-- @formatter:on

DROP SEQUENCE IF EXISTS crm_receivable_plan_seq;
CREATE SEQUENCE crm_receivable_plan_seq
    START 5;

