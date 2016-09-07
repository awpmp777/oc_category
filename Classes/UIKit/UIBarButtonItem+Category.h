//
//  UIBarButtonItem+Category.h
//
//  Created by zxm on 16/7/4.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Category)

+ (instancetype)barButtonWithNavItem:(NSString *)title target:(id)target action:(SEL)action;

@end
