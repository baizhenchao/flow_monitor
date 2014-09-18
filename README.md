flow_monitor
============
功能：
目前只实现服务端。实时统计节点下各个机器流量数据，线性回归算出拟合斜率存入数据库

主要文件：
Bin: client_exm.sh 客户端信息发送模拟脚本

Bin: flow_monitor 服务端启动程序

Lib: flow_monitor.rb 头文件引用

Lib: flow_monitor: flow_monitor.rb 服务端主程序

Lib: flow_monitor: linear_func.rb 线性回归支持函数

Lib: flow_monitor: mysqlfunc.rb 数据库支持函数

Public: 图表css

Views: index.erb 拟合结果报表展示

Views: chart.erb 简单图表展示
