//
//  MainTabBar.h
//  Comprehensive
//
//  Created by walker on 2017/6/6.
//  Copyright © 2017年 walker. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainTabBar;

@protocol MainTabBarDelegate <NSObject> //代理方法

@optional
- (void)tabBar:(MainTabBar *)tabBar didSelectedButtonFrom:(long)fromBtnTag to:(long)toBtnTag;
@end

@interface MainTabBar : UIView

- (void)addTabBarButtonWithTabBarItem:(UITabBarItem *)tabBarItem;
@property(nonatomic, weak)id <MainTabBarDelegate>delegate;

@end
