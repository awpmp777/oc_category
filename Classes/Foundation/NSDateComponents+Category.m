//
//  NSDateComponents+Category.m
//  ZXMSupervisor
//
//  Created by zxm on 16/8/8.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "NSDateComponents+Category.h"
#import "NSCalendar+Category.h"

@implementation NSDateComponents (Category)

+ (NSInteger)yearOfDate:(NSDate *)date {

    NSDateComponents *comps = [[NSCalendar sharedNSCalendar] components:NSCalendarUnitYear fromDate:date];
    return comps.year;
}

+ (NSInteger)monthOfDate:(NSDate *)date {
    
    NSDateComponents *comps = [[NSCalendar sharedNSCalendar] components:NSCalendarUnitMonth fromDate:date];
    return comps.month;
}

@end
