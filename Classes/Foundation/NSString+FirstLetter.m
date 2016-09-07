//
//  NSString+FirstLetter.m
//  Apartment
//
//  Created by user on 15/8/5.
//  Copyright (c) 2015年 宋文韬. All rights reserved.
//

#import "NSString+FirstLetter.h"
#import "Pinyin.h"

@implementation NSString (FirstLetter)

- (NSString *)firstLetter {
    unichar first = [self characterAtIndex:0];
    if ([self isChinese]) {
        char cFirst = pinyinFirstLetter(first);
        return [[NSString stringWithFormat:@"%c",cFirst] uppercaseString];
    } else {
        return [[NSString stringWithFormat:@"%c",first] uppercaseString];
    }
}

- (NSUInteger)getToInt:(NSString*)strtemp {
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSData *da = [strtemp dataUsingEncoding:enc];
    return da.length;
}

//判断是否有中文
- (BOOL)isChinese {
    for(int i=0; i< [self length];i++) {
        int a = [self characterAtIndex:i];
        if (a > 0x4e00 && a < 0x9fff) {
            return YES;
        }
    }
    return NO;
}

@end
