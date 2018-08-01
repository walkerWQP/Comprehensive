//
//  MineVC.m
//  Comprehensive
//
//  Created by walker on 2017/6/6.
//  Copyright © 2017年 walker. All rights reserved.
//

#import "MineVC.h"
#import "PersonalInformationVC.h"
#import "CodeViewController.h"//生成二维码页面
#import "ScanViewController.h" //扫描二维码页面

@interface MineVC ()

//存放二维码btn的view
@property(nonatomic, strong) UIView *bgView;
//生成二维码btn
@property(nonatomic,strong) UIButton *btn1;
//扫描二维码btn
@property(nonatomic, strong) UIButton *btn2;
@end

@implementation MineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的";
    self.view.backgroundColor = [UIColor whiteColor];
    _bgView = [[UIView alloc]init];
    _bgView.frame = CGRectMake(10, 70, 220, 60);
    _bgView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_bgView];
    
    _btn1 = [[UIButton alloc] init];
    _btn1.frame = CGRectMake(10, 10, 100, 40);
    _btn1.backgroundColor = [UIColor redColor];
    [_btn1 setTitle:@"生成二维码" forState:UIControlStateNormal];
    [_btn1 setTintColor:[UIColor whiteColor]];
    [_btn1 addTarget:self action:@selector(touchOne) forControlEvents:UIControlEventTouchUpInside];
    
    _btn2 = [[UIButton alloc]init];
    _btn2.frame = CGRectMake(120, 10, 100, 40);
    _btn2.backgroundColor = [UIColor redColor];
    [_btn2 setTitle:@"扫描二维码" forState:UIControlStateNormal];
    [_btn2 setTintColor:[UIColor whiteColor]];
    [_btn2 addTarget:self action:@selector(touchTwo) forControlEvents:UIControlEventTouchUpInside];

    [_bgView addSubview:_btn1];
    [_bgView addSubview:_btn2];
}

- (void)touchOne {
    //此界面为个人信息页面,tableview有拉伸效果  返回按钮无反应,未修复
//    PersonalInformationVC *first = [[PersonalInformationVC alloc]init];
//    [self.navigationController pushViewController:first animated:YES];
    CodeViewController *secondVC = [[CodeViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)touchTwo {
    ScanViewController *thirdVC = [[ScanViewController alloc]init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
