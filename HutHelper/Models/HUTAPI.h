//
//  HUTAPI.h
//  HutHelper
//
//  Created by nine on 2017/2/10.
//  Copyright © 2017年 nine. All rights reserved.
//

#ifndef HUTAPI_h
#define HUTAPI_h

#define INDEX @"http://hut.wxz.name:8888"
/**课表查询*/
#define API_CLASS @"http://app.wxz.name/api/Class_ps"
#define API_CLASSXP @"http://app.wxz.name/api/Class_xp"
/**成绩查询*/
#define API_SCORES @"http://app.wxz.name/api/Score"
#define API_EXAM @"http://app.wxz.name/api/Exam"
/**登录界面*/
#define API_LOGIN @"http://app.wxz.name/api/Login"
#define API_LOGIN_RESET @"http://app.wxz.name/api/null"
/**用户界面*/
#define API_PROFILE_USER @"http://app.wxz.name/api/null"
#define API_PROFILE_AVATAR @"http://app.wxz.name/api/null"
/**网上作业*/
#define API_HOMEWORK @"http://app.wxz.name/api/null"
/**电费查询*/
#define API_POWER @""
/**二手市场*/
#define API_GOODS @"http://hut.wxz.name:8888/api/v1/stuff/goods/%d"
#define API_GOODS_USER @"http://app.wxz.name/api/null"
#define API_GOODS_CREATE @"http://app.wxz.name/api/null"
#define API_GOODS_IMG_UPLOAD @"http://app.wxz.name/api/null"
#define API_GOODS_SHOW @"http://app.wxz.name/api/null"
/**失物招领*/
#define API_LOST @"http://hut.wxz.name:8888/api/v1/loses/posts/%d"
#define API_LOST_USER @"http://app.wxz.name/api/null"
#define API_LOSES_CREATE @"http://app.wxz.name/api/null"
#define API_LOSES_IMG_UPLOAD @"http://app.wxz.name/api/null"
/**校园说说*/
#define API_MOMENTS @"http://hut.wxz.name:8888/api/v1/moments/posts/%d"
#define API_MOMENTS_USER @"http://app.wxz.name/api/null"
#define API_MOMENTS_CREATE @"http://app.wxz.name/api/null"
#define API_MOMENTS_IMG_UPLOAD @"http://app.wxz.name/api/null"
#define API_MOMENTS_DELETE @"http://app.wxz.name/api/null"
#define API_MOMENTS_COMMENT_DELETE @"http://app.wxz.name/api/null"
#define API_MOMENTS_CREATE_COMMENT @"http://app.wxz.name/api/null"
#define API_MOMENTS_LIKES_CREATE @"http://app.wxz.name/api/null"
#define API_MOMENTS_LIKES_SHOW @"http://app.wxz.name/api/null"
/**反馈*/
#define API_FEEDBACK @"http://app.wxz.name/api/null"
/**其他*/
#define API_IMG @"http://hut.wxz.name:8888%@"

/**AppKey*/
#define APPKEY_UMESSAGE @"57fe13d867e58e0e59000ca1"
#define APPKEY_QQ_SECRET @"y7n6BRLtnH9mrFT3"
#define APPKEY_SINA_SECRET @"ba2997aaab6a1602406fc94247dc072d" 
#define APPKEY_WECHAT_SECRET @"8bb26c6a577e61f0bbee160dde7e79af"

#endif /* HUTAPI_h */
