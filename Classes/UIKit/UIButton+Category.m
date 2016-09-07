//
//  UIButton+Category.m
//
//  Created by 宋文韬 on 16/4/1.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "UIButton+Category.h"
#import "NSString+Category.h"

@implementation UIButton (Category)

+ (UIButton *)buttonWithNavItem:(NSString *)title target:(id)target action:(SEL)action {
    CGSize size = [title boundingRectWithFont:[UIFont systemFontOfSize:14]];
    UIButton *itemButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, size.width+10, 40)];
    [itemButton setExclusiveTouch:YES];
    [itemButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [itemButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [itemButton setTitle:title forState:UIControlStateNormal];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    return itemButton;
}

@end
