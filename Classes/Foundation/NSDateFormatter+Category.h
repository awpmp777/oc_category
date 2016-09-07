//
//  NSDateFormatter+Category.h
//
//  Created by 宋文韬 on 15/12/24.
//  Copyright © 2015年 zxm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (Category)

+ (NSDateFormatter *)sharedNSDateFormatter;

+ (NSDate *)dateFromString:(NSString *)dateString;
+ (NSDate *)dateFromString:(NSString *)dateString andFormatter:(NSString *)formatter;

+ (NSString *)stringFromDate:(NSDate *)date;
+ (NSString *)stringFromDate:(NSDate *)date andFormatter:(NSString *)formatter;

@end
