//
//  OneVcModuleAPI.m
//  OneVc
//
//  Created by 孙凯峰 on 2017/4/24.
//  Copyright © 2017年 wubianxiaoxian. All rights reserved.
//

#import "OneVcModuleAPI.h"
#import "OneVc.h"
@implementation OneVcModuleAPI
static OneVcModuleAPI *_shareInstance;
+ (instancetype)shareInstance {
    if (_shareInstance == nil) {
        _shareInstance = [[OneVcModuleAPI alloc] init];
    }
    return _shareInstance;
}
- (UIViewController *)OneVc {
    return [[OneVc alloc] init];
}
@end
