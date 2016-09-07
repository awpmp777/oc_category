//
//  UILabel+Utilities.h
//
//  Created by zxm on 16/2/20.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Utilities)

- (instancetype)initWithText:(NSString *)text Font:(UIFont *)font;

- (instancetype)initWithFont:(UIFont *)font;

- (void)alignTop;
- (void)alignBottom;

@end
