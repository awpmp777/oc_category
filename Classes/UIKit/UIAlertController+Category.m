//
//  UIAlertController+Category.m
//  ZXMSupervisor
//
//  Created by zxm on 16/7/27.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "UIAlertController+Category.h"

@implementation UIAlertController (Category)

+ (void)presentAlert:(NSString *)title message:(NSString *)message cancelAction:(UIAlertAction *)cancelAction otherAction:(UIAlertAction *)otherAction controller:(UIViewController *)controller {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    if (cancelAction) {
        [alertController addAction:cancelAction];
    }
    if (otherAction) {
        [alertController addAction:otherAction];
    }
    [controller presentViewController:alertController animated:YES completion:nil];
}

+ (void)presentActionSheet:(NSString *)title message:(NSString *)message cancelAction:(UIAlertAction *)cancelAction otherAction:(UIAlertAction *)otherAction controller:(UIViewController *)controller {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    if (cancelAction) {
        [alertController addAction:cancelAction];
    }
    if (otherAction) {
        [alertController addAction:otherAction];
    }
    [controller presentViewController:alertController animated:YES completion:nil];
}

+ (void)presentAlert:(NSString *)title message:(NSString *)message controller:(UIViewController *)controller {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:action];
    [controller presentViewController:alertController animated:YES completion:nil];
}

@end
