//
//  LoginViewController.m
//  HutHelper
//
//  Created by nine on 2016/10/17.
//  Copyright © 2016年 nine. All rights reserved.
//

#import "LoginViewController.h"
#import "ResetPassWordViewController.h"
#import "LeftSortsViewController.h"
#import "JSONKit.h"
#import "AppDelegate.h"
#import "UMessage.h"
#import "MainPageViewController.h"
#import "MBProgressHUD.h"
#import "AFNetworking.h"
#import "MBProgressHUD+MJ.h"
#import "User.h"
#import <RongIMKit/RongIMKit.h>

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *UserName;
@property (weak, nonatomic) IBOutlet UITextField *Password;
@property  Boolean isBtn;
@end

@implementation LoginViewController

- (NSString*)dictionaryToJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

- (IBAction)Login:(id)sender {
    self.isBtn=TRUE;
    NSString *UserName_String =[NSString stringWithFormat:@"%@",_UserName.text];
    NSString *Password_String =[NSString stringWithFormat:@"%@",_Password.text];
    [MBProgressHUD showMessage:@"登录中" toView:self.view];
    [APIRequest GET:[Config getApiLogin:UserName_String passWord:Password_String] parameters:nil
            success:^(id responseObject) {
                 HideAllHUD
        NSDictionary *userAll = [NSDictionary dictionaryWithDictionary:responseObject];
        NSDictionary *userData=[userAll objectForKey:@"data"];//All字典 -> Data字典
        NSString *msg=[userAll objectForKey:@"msg"];
        if ([msg isEqualToString: @"ok"])
        {
            [Config saveUser:userData];
            [Config saveRememberCodeApp:[userAll objectForKey:@"remember_code_app"]];
            [Config saveCurrentVersion:[[[NSBundle mainBundle] infoDictionary]
                                        objectForKey:@"CFBundleShortVersionString"]];
            [Config addNotice];
            /**设置友盟标签&别名*/
            [Config saveUmeng];
            //请求即时聊天服务的Token
            NSDictionary *dic=@{@"userid":Config.getUserId,
                                @"name":Config.getTrueName
                                };
//            [APIRequest POST:[Config getApiImToken] parameters:dic
//                     success:^(id responseObject) {
//                         NSDictionary *resultDictionary = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
//                         NSLog(@"%@",resultDictionary);
//                         [Config saveImToken:resultDictionary[@"token"]];
//                         [[RCIM sharedRCIM] connectWithToken:[Config getImToken]
//                                                     success:^(NSString *userId) {
//                                                         NSLog(@"登陆成功。当前登录的用户ID：%@", userId);
//                                                     } error:^(RCConnectErrorCode status) {
//                                                         NSLog(@"登陆的错误码为:%d", status);
//                                                     } tokenIncorrect:^{
//                                                         
//                                                         NSLog(@"token错误");
//                                                     }];
//                     }
//                     failure:^(NSError *error) {
//                         NSLog(@"Token获取失败");
//                     }];
            //返回主界面
            [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:([self.navigationController.viewControllers count] -2)] animated:YES];  //返回上一个View
        }
        else {
            NSString *Show_Msg=[msg stringByAppendingString:@",默认密码身份证后六位"];
            if ([msg isEqualToString:@"多次失败，请稍后再试，或修改密码"]) {
                UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"密码多次错误" message:msg preferredStyle:  UIAlertControllerStyleAlert];
                [alert addAction:[UIAlertAction actionWithTitle:@"稍后再试" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    //点击按钮的响应事件；
                }]];
                [alert addAction:[UIAlertAction actionWithTitle:@"修改密码" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [Config pushViewController:@"Login2"];
                }]];
                //弹出提示框；
                [self presentViewController:alert animated:true completion:nil];
            } else{
                [MBProgressHUD showError:Show_Msg toView:self.view];
            }
            
        }
    }failure:^(NSError *error) {
        HideAllHUD
        [MBProgressHUD showError:@"网络错误或超时" toView:self.view];
    }];
}



- (IBAction)End:(id)sender {
    [sender resignFirstResponder];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    _UserName.placeholder=@"学号";
    [_UserName setValue:RGB(202,202,202,1) forKeyPath:@"_placeholderLabel.textColor"];
    _Password.placeholder=@"密码";
    [_Password setValue:RGB(202,202,202,1) forKeyPath:@"_placeholderLabel.textColor"];
    self.UserName.delegate=self;
    self.Password.delegate=self;
    self.isBtn=false;
    /** 标题栏样式 */
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = item;
    
    
}
- (IBAction)resetpassword:(id)sender {
    [Config pushViewController:@"Login2"];
}


- (void)viewWillAppear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    self.navigationController.navigationBarHidden = NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField: textField up: YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField: textField up: NO];
}
- (void) animateTextField: (UITextField*) textField up: (BOOL) up

{
    if (_isBtn) {
        _isBtn=false;
        return;
    }
    const int movementDistance = SYReal(180); // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    int movement = (up ? -movementDistance : movementDistance);
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);

    [UIView commitAnimations];
}

@end

