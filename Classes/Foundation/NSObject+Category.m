//
//  NSObject+Category.m
//
//  Created by zxm on 16/5/23.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "NSObject+Category.h"

@implementation NSObject (Category)

- (id)safeObjectForKey:(id)aKey {
    if ([self isKindOfClass:[NSDictionary class]]) {
        if (([(NSDictionary *)self objectForKey:aKey] != nil) && ([(NSDictionary *)self objectForKey:aKey] != [NSNull null])) {
            return [(NSDictionary *)self objectForKey:aKey];
        }
    }
    
    return nil;
}

@end
