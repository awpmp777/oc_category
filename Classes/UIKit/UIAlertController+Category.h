//
//  UIAlertController+Category.h
//  ZXMSupervisor
//
//  Created by zxm on 16/7/27.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Category)

+ (void)presentAlert:(NSString *)title message:(NSString *)message cancelAction:(UIAlertAction *)cancelAction otherAction:(UIAlertAction *)otherAction controller:(UIViewController *)controller;

+ (void)presentActionSheet:(NSString *)title message:(NSString *)message cancelAction:(UIAlertAction *)cancelAction otherAction:(UIAlertAction *)otherAction controller:(UIViewController *)controller;

+ (void)presentAlert:(NSString *)title message:(NSString *)message controller:(UIViewController *)controller;

@end
