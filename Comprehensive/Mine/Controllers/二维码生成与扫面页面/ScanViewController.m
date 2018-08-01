//
//  ScanViewController.m
//  Comprehensive
//
//  Created by walker on 2017/6/6.
//  Copyright © 2017年 walker. All rights reserved.
//

#import "ScanViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "UIImage+Extend.h"

/*
 AVCaptureSession 会话对象。此类作为硬件设备输入输出信息的桥梁，承担实时获取设备数据的责任
 AVCaptureDeviceInput 设备输入类。这个类用来表示输入数据的硬件设备，配置抽象设备的port
 AVCaptureMetadataOutput 输出类。这个支持二维码、条形码等图像数据的识别
 AVCaptureVideoPreviewLayer 图层类。用来快速呈现摄像头获取的原始数据
 二维码扫描功能的实现步骤是创建好会话对象，用来获取从硬件设备输入的数据，并实时显示在界面上。在扫描到相应图像数据的时候，通过AVCaptureVideoPreviewLayer类型进行返回
 */

@interface ScanViewController ()<AVCaptureMetadataOutputObjectsDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (nonatomic,strong) AVCaptureSession *captureSession;
@property (nonatomic,strong) AVCaptureVideoPreviewLayer *captureVideoPreviewLayer;
@property (nonatomic,strong) AVCaptureMetadataOutput *captureMetadataOutput;
@property (nonatomic,strong) CAShapeLayer *scanPaneBgLayer;

@property (nonatomic, strong) UIImageView *scanPane;//扫描框
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) NSLayoutConstraint *boxLayoutConstraint;
@property (nonatomic, strong) UIActivityIndicatorView *loaddingIndicatorView;
@property (nonatomic, strong) UIImageView *scanLine;//扫描线

@property (nonatomic, strong) UIView *bgView;//底部存放按钮view
@property (nonatomic, strong) UIButton *phoneBtn;//相册
@property (nonatomic, strong) UIButton *lightBtn;//开灯
@property (nonatomic, strong) UIButton *generateBtn;//生成二维码


@end

@implementation ScanViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"扫一扫";
    self.view.backgroundColor = [UIColor whiteColor];
    _bgView = [[UIView alloc]init];
    _bgView.frame = CGRectMake(0, ScreenHeight - 64, ScreenWidth, 64);
    _bgView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_bgView];
    
    _phoneBtn = [[UIButton alloc]init];
    _phoneBtn.frame = CGRectMake(50, 9, 45, 45);
    [_phoneBtn setImage:[UIImage imageNamed:@"scancode_photo"] forState:UIControlStateNormal];
    [_phoneBtn setTitle:@"相册" forState:UIControlStateNormal];
    
    
    
    [_bgView addSubview:_phoneBtn];
    
    
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
