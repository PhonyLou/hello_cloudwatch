# hello_cloudwatch

#### How to run

Deploy Lambda
```
$ cd qilin-metrics-fedder
$ mvn package
$ sls deploy
```

#### CloudWatch 是什么？我们为什么要使用CloudWatch？

Amazon CloudWatch是AWS的一个全托管服务，可以用来监控AWS资源和在AWS中运行的应用程序。

CloudWatch 本质上是一个指标存储库，存放有AWS服务提供的指标和自定义的指标，并且可以检索指标的统计数据。

#### CloudWatch中的metrics是什么？包括哪些种类？我们可以如何使用metrics？

指标(metrics) 是 CloudWatch 中的基本概念。指标表示一个发布到 CloudWatch 并且按时间排序的数据点集。可将指标视为要监控的变量，而数据点代表该变量随时间变化的值。

种类
- AWS提供的指标
- 自定义的指标

如何使用
- 可以查看/搜索指标
- 可以获取指标的数据，by 特定资源/跨多个资源等
- 可以绘制指标的图表
- 发布自定义指标

#### CloudWatch Events是什么？可以应用在哪些场景？

CloudWatch Events 提供了几乎实时的系统事件流，这些流描述了AWS资源的变化。

场景
- 资源级，比如EC2实例的启停
- 应用程序级，比如API被调用

#### 相关概念理解：metrics，periods，namespace，count，dimensions，statistics

- metrics, 发布到CloudWatch 并且按时间排序的数据点集
- periods, 时间段是与特定 Amazon CloudWatch 统计信息关联的时间的长度。时间段以秒为单位定义，有效值为 1、5、10、30 或 60 的任意倍数。默认值为60秒。
- namespac, 命名空间是CloudWatch 指标的容器。AWS命名空间一般按照AWS/service来命名。在创建指标时可以指定命名空间。
- count, 
- dimensions, 维度是一个名称/值对，它是指标标识的一部分。向 CloudWatch 发送数据的 AWS 服务将向每个指标附加维度。您可使用维度筛选 CloudWatch 返回的结果
- statistics, 统计数据 是指定时间段内的指标数据聚合。聚合通过使用命名空间、指标名称、维度以及数据点度量单位在指定的时间段内完成