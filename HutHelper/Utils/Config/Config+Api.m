//
//  Config+Api.m
//  HutHelper
//
//  Created by Nine on 2017/5/3.
//  Copyright © 2017年 nine. All rights reserved.
//

#import "Config+Api.h"
#import "NSString+Common.h"

@implementation Config (Api)
#pragma mark - 课表查询
+(NSString*)getApiClass{
    return @"http://app.wxz.name/api/Class_ps";
}
+(NSString*)getApiClassXP{
    return @"http://app.wxz.name/api/Class_xp";
}
#pragma mark - 考试查询
+(NSString*)getApiExam{
    return @"http://app.wxz.name/api/Exam";
}
#pragma mark - 成绩查询
+(NSString*)getApiScores{
    return @"http://app.wxz.name/api/Score";
}
+(NSString*)getApiRank{
    return @"http://app.wxz.name/api/Rank";
}
#pragma mark - 登录界面
+(NSString*)getApiLogin:(NSString*)userName passWord:(NSString*)passWord{
    return @"http://app.wxz.name/api/Login";
}
+(NSString*)getApiLoginReset{
    return @"http://app.wxz.name/api/null";
}
#pragma mark - 用户界面
+(NSString*)getApiProfileUser{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiProfileAvatar{
    return @"http://app.wxz.name/api/null";
}
#pragma mark - 网上作业
+(NSString*)getApiHomeWork{
    return @"http://app.wxz.name/api/null";
}
#pragma mark - 电费查询
+(NSString*)getApiPower{
    return @"http://app.wxz.name/api/null";
}
#pragma mark - 二手市场
+(NSString*)getApiGoods{
    return [NSString stringWithFormat:@"%@/api/v1/stuff/goods",Config.apiIndex];
}
+(NSString*)getApiGoodsUser{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiGoodsCreate{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiGoodsImgUpload{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiGoodsShow{
    return @"http://app.wxz.name/api/null";
}
#pragma mark - 失物招领
+(NSString*)getApiLost{
    return [NSString stringWithFormat:@"%@/api/v1/loses/posts",Config.apiIndex];
}
+(NSString*)getApiLostUser{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiLostCreate{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiLostImgUpload{
    return @"http://app.wxz.name/api/null";
}
#pragma mark - 校园说说
+(NSString*)getApiMoments{
    return [NSString stringWithFormat:@"%@/api/v1/moments/posts",Config.apiIndex];
}
+(NSString*)getApiMomentsUser{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiMomentsCreate{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiMomentsImgUpload{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiMomentsDelete{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiMomentsCommentDelete{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiMomentsCreateComment{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiMomentsLikesCreate{
    return @"http://app.wxz.name/api/null";
}
+(NSString*)getApiMomentsLikesShow{
    return @"http://app.wxz.name/api/null";
}
#pragma mark - 反馈
+(NSString*)getApiFeedback{
    return [NSString stringWithFormat:@"%@/home/msg/0",Config.apiIndex];
}
#pragma mark - 其他
+(NSString*)getApiImg{
    return @"http://hut.wxz.name:8888";
}
#pragma mark - 视频专栏
+(NSString*)getApiVedioShow{
    return @"http://vedio.wxz.name/api/vedio.html";
}
+(NSString*)apiIndex{
    return @"http://hut.wxz.name:8888";
}
@end
