//
//  UIButton+Category.h
//
//  Created by 宋文韬 on 16/4/1.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Category)

+ (UIButton *)buttonWithNavItem:(NSString *)title target:(id)target action:(SEL)action;

@end
