# 工大助手
![](https://img.shields.io/badge/license-apache-green.svg)
![](https://img.shields.io/badge/lanuage-Objective--C-brightgreen.svg)
[![Support](https://img.shields.io/badge/support-iOS%208%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)

# 项目概况
- 工大助手是湖南工业大学计算机学院实验室为工大学子开发的一款校园App。
- 目前iOS端用户量4000人左右，Android端用户9000人左右。Web端日浏览量在3W左右。
- 本仓库为工大助手iOS端，除接口文件不同，其余与线上版本一致。
- iOS端下载: [AppStore](https://itunes.apple.com/cn/app/gong-da-zhu-shou-hu-nan-gong/id1164848835)
- Android端下载: [工大助手](http://hugongda.top:8888/res/app/)
- Win10端下载: [工大助手](http://hugongda.top:8888/res/app/)
- Web端:[工大导航](http://hugongda.top:8888/)
- 开发者博客:[Nine's Blog](http://www.wxz.name)

# 项目框架
```
.
	├── HutHelper
	│   ├── Application：接口，配置文件
	│   ├── Utils：一些工具类等
	│   ├── Vendor：一些没有通过Pod管理的三方库
	│   ├── Models：数据模型
	│   ├── View：界面，xib或者storyboard之类的文件
	│   ├── Supporting Files：一些支持文件
	│   └── Controllers
	│       ├── Main：主界面
	│       ├── Login：登录界面
	│       ├── Score：考试成绩
	│       ├── Class：平时课表
	│       ├── CourseXp：实验课表
	│       ├── Moments：校园说说
	│       ├── Exam：考试计划查询
	│       ├── User：用户界面
	│       ├── Lost：失物招领界面
	│       ├── Feedback：反馈界面
	│       └── Hand：二手市场界面
	├── Extend:课程表Widget
	└── Pods：项目使用了[CocoaPods](http://code4app.com/article/cocoapods-install-usage)这个类库管理工具
	└── JSON:接口数据
```
## Features
- [x] 成绩查询
- [x] 考试查询
- [x] 电费查询
- [x] 网上作业
- [x] 二手市场
- [x] 校园说说
- [x] 实验课表
- [x] 失物招领
- [x] 视频专栏
- [x] 图书馆
- [x] 校历
- [ ] 老乡查找
- [ ] 校友寻找
- [ ] 即时聊天
- [ ] 校友寻找
- [ ] 校园活动

# 界面
![登录界面](http://img.wxz.name/github/20170426151539_vDkWXy_IMG_0909.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![主界面](http://img.wxz.name/IMG_1364.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![](http://img.wxz.name/github/20170426151539_Z47HZw_IMG_0904.png?imageView2/2/w/252/h/450/interlace/0/q/41)

![成绩](http://img.wxz.name/github/20170426151539_trlelR_IMG_0900.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![所有成绩查询](http://img.wxz.name/github/20170426151539_oucdIa_IMG_0902.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![](http://img.wxz.name/github/20170426153118_2dnEVn_IMG_0908.png?imageView2/2/w/252/h/450/interlace/0/q/41)

![课程表](http://img.wxz.name/github/20170426151539_FSbFF5_IMG_0898.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![图书馆](http://img.wxz.name/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-11-06%2019.41.19.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![网上作业](http://img.wxz.name/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-11-06%2019.41.41.png?imageView2/2/w/252/h/450/interlace/0/q/41)

![](http://img.wxz.name/github/20170426151539_zK1rOn_IMG_0906.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![](http://img.wxz.name/github/20170426151539_3MUsyQ_IMG_0907.png?imageView2/2/w/252/h/450/interlace/0/q/41)
![](http://img.wxz.name/github/20170426151539_5ro9oG_IMG_0903.png?imageView2/2/w/252/h/450/interlace/0/q/41)

# 项目使用的开源项目
- [LeftSlide - 主界面框架](https://github.com/chennyhuang/LeftSlide)
- [MBProgressHUD - 等待框动画](https://github.com/jdg/MBProgressHUD)
- [GWPCourseListView - 课程表界面](https://github.com/GanWenpeng/GWPCourseListView)
- [LGPlusButtonsView - 按钮控件](https://github.com/Friend-LGA/LGPlusButtonsView)
- [UUCharView - 成绩曲线图标](https://github.com/ZhipingYang/UUChartView)
- [SKSTableView - 成绩列表](https://github.com/sakkaras/SKSTableView)
- [TZImagePickerController - 照片选择器](https://github.com/banchichen/TZImagePickerController)
- [SDWebImage - 异步多图加载](https://github.com/rs/SDWebImage)
- [MJRefresh - 上拉下拉刷新](https://github.com/CoderMJLee/MJRefresh)
- [YYModel - Json转Model](https://github.com/ibireme/YYModel)
- [AFNetworking - 请求异步加载](https://github.com/AFNetworking/AFNetworking)

# License
[Apache Licene 2.0](http://www.apache.org/licenses/LICENSE-2.0.html)



