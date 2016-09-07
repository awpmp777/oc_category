//
//  NSCalendar+Category.m
//  ZXMSupervisor
//
//  Created by zxm on 16/8/8.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "NSCalendar+Category.h"

@implementation NSCalendar (Category)

static NSCalendar *s_calendar;

+ (NSCalendar *)sharedNSCalendar {
  
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    });
    
    return s_calendar;
}

@end
