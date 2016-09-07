//
//  UIView+Utilities.m
//
//  Created by zxm on 16/2/22.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "UIView+Utilities.h"
#import "UIColor+Utilities.h"

@implementation UIView (Utilities)

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////

- (void)removeAllSubviews {
    while (self.subviews.count) {
        UIView* child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}



///////////////////////////////////////////////////////////////////////////////////////////////////

- (void)startLoad {
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [indicatorView setTag:999];
    [indicatorView setCenter:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
    [self addSubview:indicatorView];
    [indicatorView startAnimating];
}

- (void)stopLoad {
    UIView *indicatorView = [self viewWithTag:999];
    if ([indicatorView isKindOfClass:[UIActivityIndicatorView class]]) {
        [(UIActivityIndicatorView *)indicatorView stopAnimating];
        [(UIActivityIndicatorView *)indicatorView removeFromSuperview];
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////

+ (UIView *)creatLineWithFrame:(CGRect)frame {
    UIView *line = [[UIView alloc] initWithFrame:frame];
    [line setBackgroundColor:[UIColor hexStringToColor:@"#dadada"]];
    
    return line;
}

+ (UIView *)creatIntervalWithFrame:(CGRect)frame {
    UIView *line = [[UIView alloc] initWithFrame:frame];
    [line setBackgroundColor:[UIColor hexStringToColor:@"#f4f5f6"]];
    
    return line;
}

///////////////////////////////////////////////////////////////////////////////////////////////////

- (CALayer *)roundRectMask {
    
    CALayer *userMask = [CALayer layer];
    userMask.frame = self.bounds;
    
    CGFloat x = self.frame.size.width/2;
    CGFloat y = self.frame.size.height/2;
    
    CAShapeLayer *userMaskLayer = [CAShapeLayer layer];
    userMaskLayer.bounds = self.bounds;
    userMaskLayer.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(x, y) radius:x startAngle:0 endAngle:2*M_PI clockwise:YES].CGPath;
    userMaskLayer.position  = CGPointMake(x, y);
    [userMask addSublayer:userMaskLayer];
    
    return userMask;
}

//
- (void)setBadgeValue:(BOOL)value {
    UIView *badge = [self viewWithTag:9999];
    if (!badge) {
        badge = [[UIView alloc] initWithFrame:CGRectMake(self.width-5, 5, 5, 5)];
        [badge setTag:9999];
        badge.layer.mask = [badge roundRectMask];
        badge.clipsToBounds = YES;
        [badge setBackgroundColor:[UIColor redColor]];
    }
    
    if (value) {
        [self addSubview:badge];
    } else {
        [badge removeFromSuperview];
    }
}


- (UIImage *)createImage {
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, self.layer.contentsScale);
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
