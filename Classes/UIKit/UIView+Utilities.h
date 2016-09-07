//
//  UIView+Utilities.h
//
//  Created by zxm on 16/2/22.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Utilities)

- (CGFloat)left;
- (void)setLeft:(CGFloat)x;
- (CGFloat)top;
- (void)setTop:(CGFloat)y;
- (CGFloat)right;
- (void)setRight:(CGFloat)right;
- (CGFloat)bottom;
- (void)setBottom:(CGFloat)bottom;
- (CGFloat)width;
- (void)setWidth:(CGFloat)width;
- (CGFloat)height;
- (void)setHeight:(CGFloat)height;
- (CGPoint)origin;
- (void)setOrigin:(CGPoint)origin;
- (CGSize)size;
- (void)setSize:(CGSize)size;

- (void)removeAllSubviews;

- (void)startLoad;
- (void)stopLoad;

+ (UIView *)creatLineWithFrame:(CGRect)frame;
+ (UIView *)creatIntervalWithFrame:(CGRect)frame;

- (CALayer *)roundRectMask;
- (void)setBadgeValue:(BOOL)value;

- (UIImage *)createImage;

@end
