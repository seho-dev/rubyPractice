require 'json'
a = [];
b = "预定义变量
传值和传引用的区别
构造函数和析构函数
魔术方法
public、protected、private、final 区别
客户端/服务端 IP 获取，了解代理透传 实际IP 的概念
类的静态调用和实例化调用
接口类和抽象类的区别
PHP 不实例化调用方法
php.ini 配置选项
php-fpm.conf 配置
502、504 错误产生原因及解决方式
如何返回一个301重定向
PHP 与 MySQL 连接方式
MySQL、MySQLi、PDO 区别
MySQL 连接池
代码执行过程
base64 编码原理
ip2long 实现
MVC 的理解
主流 PHP 框架特点
对象关系映射/ORM
串行、并行、并发的区别
同步与异步的理解
阻塞与非阻塞的理解
同步阻塞与非同步阻塞的理解
异步阻塞与异步非阻塞的理解"

a = b.split("\n");
result = "";
aFile = File.new("result.json", "r+")   
a.each do |item|
    temp = {
        title: item,
        areaID: { oid: '60a9c3303b7d350001448872'},
        publishUserID: { oid: '60a9de2af3ff4f0001a4e52c' },
        questionExplanation: [],
        content: "",
        state: "pass",
        tagID: [],
        createDate: Time.now.strftime('%Y-%m-%dT%H:%M:%S.%L%z'),
        updateDate: Time.now.strftime('%Y-%m-%dT%H:%M:%S.%L%z'),
        deleteDate: "",
    }
    aFile.syswrite(temp.to_json)
    aFile.syswrite("\n")
end
print(result);