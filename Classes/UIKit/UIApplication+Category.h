//
//  UIApplication+Category.h
//
//  Created by zxm on 16/2/29.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Category)

+ (UIViewController *)getCurrentVC;

- (UIViewController *)activityViewController;

@end
