### 使用指南
```
1.添加XXLJobConfig.class
2.调整application.yaml
  2.1：xxl.job.admin.addresses: http://127.0.0.1:9000
  2.2：xxl-job executor.appname: xxl-job-executor-yooeee-sample
  2.3：xxl-job executor.logpath: /data/applogs/xxl-job/yooeee-jobhandler
```
### 配置规则
```
1.命名规范：
eg:
appname: xxl-job-executor-yooeee-sample
logpath: /data/applogs/xxl-job/yooeee-jobhandler
==其中的yooeee代此的项目名称

```
### 执行器配置，配置内容说明：
```
### xxl-job admin address list：调度中心部署跟地址：如调度中心集群部署存在多个地址则用逗号分隔。执行器将会使用该地址进行"执行器心跳注册"和"任务结果回调"。
xxl.job.admin.addresses=http://127.0.0.1:8080/xxl-job-admin

### xxl-job executor address：执行器"AppName"和地址信息配置：AppName执行器心跳注册分组依据；地址信息用于"调度中心请求并触发任务"和"执行器注册"。执行器默认端口为9999，执行器IP默认为空表示自动获取IP，多网卡时可手动设置指定IP，手动设置IP时将会绑定Host。单机部署多个执行器时，注意要配置不同执行器端口；
xxl.job.executor.appname=xxl-job-executor-sample
xxl.job.executor.ip=
xxl.job.executor.port=9999

### xxl-job, access token：执行器通讯TOKEN，非空时启用
xxl.job.accessToken=

### xxl-job log path：执行器运行日志文件存储的磁盘位置，需要对该路径拥有读写权限
xxl.job.executor.logpath=/data/applogs/xxl-job/jobhandler/

### xxl-job log retention days：执行器Log文件定期清理功能，指定日志保存天数，日志文件过期自动删除。限制至少保持3天，否则功能不生效；
xxl.job.executor.logretentiondays=-1
```
### Cron表达式在线工具
```
Cron表达式在线工具---无广告
http://www.pppet.net/
crontab表达式
https://tool.lu/crontab/
==
在线Cron表达式生成器--不推荐使用
http://cron.qqe2.com/
```
### XXL-JOB 官网
```
http://www.xuxueli.com/xxl-job/#/
https://www.cnblogs.com/xuxueli/p/5021979.html
```
