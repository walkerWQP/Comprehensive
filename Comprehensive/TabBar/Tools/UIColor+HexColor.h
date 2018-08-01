//
//  UIColor+HexColor.h
//  Comprehensive
//
//  Created by walker on 2017/6/6.
//  Copyright © 2017年 walker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColor)

//十六进制颜色
+(UIColor *)colorWithHexString:(NSString *)hex;

+(UIColor *)colorWithHexString:(NSString *)hex withAlpha:(CGFloat)alpha;

@end
