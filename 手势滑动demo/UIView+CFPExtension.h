//
//  UIView+CFPExtension.h
//  
//
//  Created by NJHu on 16/7/17.
//  Copyright © 2016年.  All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CFPExtension)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;


// 判断一个视图是否在窗口上
- (BOOL)isShowingOnKeyWindow;

// 在视图里边找到第一响应者
- (UIView *)findFirstResponder;

/// 获取view对应的视图控制器
- (UIViewController*)viewController;

/// 快速加载XIb
+ (instancetype)viewLoadFromNib;

@end
