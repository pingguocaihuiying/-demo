//
//  OneViewController.h
//  手势滑动demo
//
//  Created by apple on 2017/2/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface OneViewController : BaseViewController
/**
 *  控制跳转到某个tab的参数，默认为0，就是第一个tab
 */
@property (nonatomic , assign) NSInteger currentIndex;

@end
