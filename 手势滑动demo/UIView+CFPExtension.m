//
//  UIView+CFPExtension.m
//  
//
//  Created by NJHu on 16/7/17.
//  Copyright © 2016年.  All rights reserved.
//

#import "UIView+CFPExtension.h"

@implementation UIView (CFPExtension)

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setTop:(CGFloat)t
{
    self.frame = CGRectMake(self.left, t, self.width, self.height);
}

- (CGFloat)top
{
    return self.frame.origin.y;
}

- (void)setBottom:(CGFloat)b
{
    self.frame = CGRectMake(self.left, b - self.height, self.width, self.height);
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setLeft:(CGFloat)l
{
    self.frame = CGRectMake(l, self.top, self.width, self.height);
}

- (CGFloat)left
{
    return self.frame.origin.x;
}

- (void)setRight:(CGFloat)r
{
    self.frame = CGRectMake(r - self.width, self.top, self.width, self.height);
}

- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

//- (BOOL)isShowingOnKeyWindow
//{
//    
////    CGRect newFrame = [CFPKeyWindow convertRect:self.frame fromView:self.superview];
////    
//////    CGRect new_frame = [self.superview convertRect:self.frame toView:CFPKeyWindow];
////    
////    BOOL isIntersects = CGRectIntersectsRect(CFPKeyWindow.bounds, newFrame);
////    
////    
////    return !self.isHidden && self.alpha > 0.01 && self.window == CFPKeyWindow && isIntersects;
//    
//}

- (UIView *)findFirstResponder {
    UIView* baseView = self;
    
    if (baseView.isFirstResponder)
        
        return baseView;
    
    for (UIView *subview in baseView.subviews) {
        
        UIView *firstResponder = [subview findFirstResponder];
        
        if (firstResponder != nil)
        {
            return firstResponder;
        }
    }
    return nil;
    
}

//+ (instancetype)viewLoadFromNib
//{
//    return [CFPMainBoundle loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
//}

- (UIViewController *)viewController {
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}


@end
