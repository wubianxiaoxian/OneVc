//
//  OneVc.m
//  OneVc
//
//  Created by 孙凯峰 on 2017/4/24.
//  Copyright © 2017年 wubianxiaoxian. All rights reserved.
//

#import "OneVc.h"
#import "Userinfo.h"
@interface OneVc ()

@end

@implementation OneVc

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *OneVclabel=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    OneVclabel.text=@"这是OneVc";
    OneVclabel.backgroundColor=[UIColor whiteColor];
    OneVclabel.font=[UIFont systemFontOfSize:20];
    [self.view addSubview:OneVclabel];

    
    self.view.backgroundColor=[UIColor blackColor];
    UIButton *loginbutton=[[UIButton alloc]initWithFrame:CGRectMake(100, 300, 200, 200)];
    [loginbutton setTitle:@"退出" forState:UIControlStateNormal];
    [loginbutton setTintColor:[UIColor blackColor]];
    [loginbutton addTarget:self action:@selector(OneVcclcik:) forControlEvents:UIControlEventTouchUpInside];
    loginbutton.titleLabel.font=[UIFont systemFontOfSize:20];
    loginbutton.backgroundColor=[UIColor blueColor];
    [self.view addSubview:loginbutton];
    
    
    
    
    // Do any additional setup after loading the view.
}
-(void)OneVcclcik:(UIButton *)sender{
     NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    [defaults setObject:nil forKey:@"Userjson"];
    [[Userinfo sharedDetail] LoadUserJson];//让单例重新加载数据
    


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
