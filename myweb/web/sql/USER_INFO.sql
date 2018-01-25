-- Create table
create table USER_INFO
(
  ID            VARCHAR2(50) not null,
  USER_NAME     VARCHAR2(50),
  EMAIL         VARCHAR2(30),
  USER_PASSWORD VARCHAR2(10)
)
tablespace USER_DATA
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the columns 
comment on column USER_INFO.ID
  is '主键';
comment on column USER_INFO.USER_NAME
  is '用户名';
comment on column USER_INFO.EMAIL
  is '邮箱';
comment on column USER_INFO.USER_PASSWORD
  is '密码';
-- Create/Recreate primary, unique and foreign key constraints 
alter table USER_INFO
  add constraint PK_USER primary key (ID)
  using index 
  tablespace USER_DATA
  pctfree 10
  initrans 2
  maxtrans 255;
