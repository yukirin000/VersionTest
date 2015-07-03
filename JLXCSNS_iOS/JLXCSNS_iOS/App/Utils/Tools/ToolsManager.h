//
//  ToolsManager.h
//  UBaby_iOS
//
//  Created by bhczmacmini on 14-10-20.
//  Copyright (c) 2014年 bhczmacmini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"

/*!
    @brief 工具类
 */
@interface ToolsManager : NSObject

//邮箱
+ (BOOL) validateEmail:(NSString *)email;
//密码
+ (BOOL) validatePassword:(NSString *)passWord;
//手机号码验证
+ (BOOL) validateMobile:(NSString *)mobile;
//用户名
+ (BOOL) validateUserName:(NSString *)name;
//身份证号
+ (BOOL) validateIdentityCard: (NSString *)identityCard;
//银行卡
+ (BOOL) validateBankCardNumber: (NSString *)bankCardNumber;
//银行卡后四位
+ (BOOL) validateBankCardLastNumber: (NSString *)bankCardNumber;
//姓名
+ (BOOL) validateName:(NSString *)name;

/*!
 @method
 @brief 获取大小
 @param content 内容
 @param fontSize 字体大小
 @param frame 内容限制
 */
+ (CGSize)getSizeWithContent:(NSString *)content andFontSize:(CGFloat)fontSize andFrame:(CGRect)frame;

/*!
 获取当前网络状态
 */
+ (BOOL)isNet;

@end
