//
//  NSString+FirstLetter.h
//  Apartment
//
//  Created by user on 15/8/5.
//  Copyright (c) 2015年 宋文韬. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FirstLetter)

// 首字母（大写）
- (NSString *)firstLetter;

// 所占字符（中文2个英文1个）
- (NSUInteger)getToInt:(NSString*)strtemp;

// 判断是否中文
- (BOOL)isChinese;

@end
