# Interstellar离线日志处理流程
<!-- TOC -->

- [Interstellar离线日志处理流程](#interstellar离线日志处理流程)
- [1. pv_hour_report](#1-pv_hour_report)
  - [1.1. 主要流程如下](#11-主要流程如下)
  - [1.2. map](#12-map)
  - [1.3. reduce](#13-reduce)
  - [1.4. update_db](#14-update_db)
  - [1.5. 其他](#15-其他)
    - [1.5.1. pv_day_report主要流程](#151-pv_day_report主要流程)
- [2. req_hour_report](#2-req_hour_report)
  - [2.1. map](#21-map)
  - [2.2. reduce](#22-reduce)

<!-- /TOC -->
# 1. pv_hour_report 

## 1.1. 主要流程如下
![pv_hour_report_easy-20201127135210-2020-11-27-13-52-11](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/pv_hour_report_easy-20201127135210-2020-11-27-13-52-11.png)

## 1.2. map
![pv_hour_report_easy-20201127135411-2020-11-27-13-54-11](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/pv_hour_report_easy-20201127135411-2020-11-27-13-54-11.png)
## 1.3. reduce
![pv_hour_report_easy-20201127135451-2020-11-27-13-54-52](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/pv_hour_report_easy-20201127135451-2020-11-27-13-54-52.png)
## 1.4. update_db

![pv_hour_report_easy-20201127135618-2020-11-27-13-56-18](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/pv_hour_report_easy-20201127135618-2020-11-27-13-56-18.png)
## 1.5. 其他
### 1.5.1. pv_day_report主要流程

> 待添加

# 2. req_hour_report

## 2.1. map
![Interstellar-report-datadiagram-easy-20201127143842-2020-11-27-14-38-42](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/Interstellar-report-datadiagram-easy-20201127143842-2020-11-27-14-38-42.png)

## 2.2. reduce
![Interstellar-report-datadiagram-easy-20201127143929-2020-11-27-14-39-30](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/Interstellar-report-datadiagram-easy-20201127143929-2020-11-27-14-39-30.png)