//
//  UIBarButtonItem+Category.m
//
//  Created by zxm on 16/7/4.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "UIBarButtonItem+Category.h"
#import "NSString+Category.h"

@implementation UIBarButtonItem (Category)

+ (instancetype)barButtonWithNavItem:(NSString *)title target:(id)target action:(SEL)action {
    CGSize size = [title boundingRectWithFont:[UIFont systemFontOfSize:14]];
    UIButton *itemButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, size.width, 40)];
    [itemButton setExclusiveTouch:YES];
    [itemButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [itemButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [itemButton setTitle:title forState:UIControlStateNormal];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    return [[UIBarButtonItem alloc] initWithCustomView:itemButton];
}

@end
