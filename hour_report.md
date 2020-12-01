
<!-- TOC -->

- [1. Interstellar离线日志处理流程](#1-interstellar离线日志处理流程)
- [2. pv_hour_report](#2-pv_hour_report)
  - [2.1. 主要流程如下](#21-主要流程如下)
  - [2.2. map](#22-map)
  - [2.3. reduce](#23-reduce)
  - [2.4. update_db](#24-update_db)
- [3. req_hour_report](#3-req_hour_report)
  - [3.1. map](#31-map)
  - [3.2. reduce](#32-reduce)
- [4. bid_hour_report](#4-bid_hour_report)
  - [4.1. map](#41-map)
  - [4.2. reduce](#42-reduce)
- [5. deal_hour_report](#5-deal_hour_report)
  - [5.1. 主要流程如下](#51-主要流程如下)
  - [5.2. map](#52-map)
    - [5.2.1. 输出的map日志，每行字段如下](#521-输出的map日志每行字段如下)
  - [5.3. reduce](#53-reduce)

<!-- /TOC -->
# 1. Interstellar离线日志处理流程
# 2. pv_hour_report 

## 2.1. 主要流程如下
![hour_report-20201130190522-2020-11-30-19-05-24](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201130190522-2020-11-30-19-05-24.png)
## 2.2. map
![hour_report-20201201180830-2020-12-01-18-08-33](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201201180830-2020-12-01-18-08-33.png)
## 2.3. reduce
![hour_report-20201201180904-2020-12-01-18-09-07](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201201180904-2020-12-01-18-09-07.png)
## 2.4. update_db

![pv_hour_report_easy-20201127135618-2020-11-27-13-56-18](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/pv_hour_report_easy-20201127135618-2020-11-27-13-56-18.png)

> 待添加

# 3. req_hour_report

## 3.1. map
![hour_report-20201201181321-2020-12-01-18-13-24](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201201181321-2020-12-01-18-13-24.png)
## 3.2. reduce
![hour_report-20201201181349-2020-12-01-18-13-51](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201201181349-2020-12-01-18-13-51.png)
# 4. bid_hour_report

## 4.1. map
![hour_report-20201130185847-2020-11-30-18-58-49](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201130185847-2020-11-30-18-58-49.png)
## 4.2. reduce
![hour_report-20201130185910-2020-11-30-18-59-12](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201130185910-2020-11-30-18-59-12.png)

# 5. deal_hour_report

## 5.1. 主要流程如下

![hour_report-20201201153001-2020-12-01-15-30-03](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201201153001-2020-12-01-15-30-03.png)

## 5.2. map

![hour_report-20201201153110-2020-12-01-15-31-12](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201201153110-2020-12-01-15-31-12.png)
### 5.2.1. 输出的map日志，每行字段如下
* if 'sdkevent' == action and 'gdt' in source:

  timeStamp:vendorId:mediaId:adspotId:mockAdspotId:supplierId:ownerId:strategyId:agencyID:companyId:customerID:advertisementID:creativeID:dealID:is_dsp\taction:reqid:price:delay_win:delay_click:cost:agency_price:deviceId\n

* if 'sdkevent' != action:

  timeStamp:vendorId:mediaId:adspotId:mockAdspotId:supplierId:ownerId:strategyId:agencyID:companyId:customerID:advertisementID:creativeID:dealID:is_dsp\taction:sidImpKey:price:delay_win:delay_click:cost:agency_price:deviceId\n

* if action == '1' or action == '2':

  DIMENSION:timeStamp:vendorId:mediaId:adspotId\taction:sidImpKey:deviceId\n

* if exception:
  
  ERRORLINE:timeStamp:adspotStr:action\tsId\n

<hr style="width:auto; height:1px;" color=#000000 size=1"/>

> aciton 数值对应的日志

  action = '1' -> imp

  action = '2' -> click

  action = '3' -> active

  action = '4' -> end


## 5.3. reduce

![hour_report-20201201160323-2020-12-01-16-03-25](https://raw.githubusercontent.com/kuangyl-max/markdownMedia/master/hour_report-20201201160323-2020-12-01-16-03-25.png)

> 其他流程见deal_hour_report.pdf