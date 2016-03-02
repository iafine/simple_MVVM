# simple_MVVM
一个简单的MVVM架构学习例子，模仿文章[猿题库 iOS 客户端架构设计](http://gracelancy.com/blog/2016/01/06/ape-ios-arch-design/)实现。  

###注意

* 例子用到afnetworking和SDWebImage两个第三方库，需要倒入才能使用。
* 由于使用的是聚合数据的免费资源，有使用次数限制。目前本项目的接口已经无法使用了，如果需要运行项目，请自己在聚合数据上注册此接口(非广告)  [菜谱大全接口](https://www.juhe.cn/docs/api/id/46)，然后修改DataManager里的一下代码即可。
```
NSString *url = @"http://apis.juhe.cn/cook/query";  
// 将key换成自己的key
NSDictionary *dic = @{@"key" : @"ece65c27ede91b57c652f30b59ed5dcd",
                      @"menu" : @"炒鸡蛋",};
```
