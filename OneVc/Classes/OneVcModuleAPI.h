//
//  OneVcModuleAPI.h
//  OneVc
//
//  Created by 孙凯峰 on 2017/4/24.
//  Copyright © 2017年 wubianxiaoxian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OneVcModuleAPI : NSObject
+ (instancetype)shareInstance;
/**
 获取首页控制器
 */
@property (nonatomic, weak, readonly) UIViewController *OneVc;
@end
