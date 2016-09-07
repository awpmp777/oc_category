//
//  NSDateFormatter+Category.m
//
//  Created by 宋文韬 on 15/12/24.
//  Copyright © 2015年 zxm. All rights reserved.
//

#import "NSDateFormatter+Category.h"

@implementation NSDateFormatter (Category)

+ (NSDateFormatter *)sharedNSDateFormatter {
    static NSDateFormatter *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[NSDateFormatter alloc] init];
    });
    
    return shared;
}

+ (NSDate *)dateFromString:(NSString *)dateString {
    NSDateFormatter *dateFormatter = [NSDateFormatter sharedNSDateFormatter];
    [dateFormatter setCalendar:[NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *date = [dateFormatter dateFromString:dateString];
    return date;
}

+ (NSDate *)dateFromString:(NSString *)dateString andFormatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [NSDateFormatter sharedNSDateFormatter];
    [dateFormatter setCalendar:[NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian]];
    [dateFormatter setDateFormat:formatter];
    NSDate *date = [dateFormatter dateFromString:dateString];
    return date;
}

+ (NSString *)stringFromDate:(NSDate *)date {
    NSDateFormatter *dateFormatter = [NSDateFormatter sharedNSDateFormatter];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
}

+ (NSString *)stringFromDate:(NSDate *)date andFormatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [NSDateFormatter sharedNSDateFormatter];
    [dateFormatter setDateFormat:formatter];
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
}

@end
