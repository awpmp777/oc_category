//
//  NSArray+Category.m
//

#import "NSArray+Category.h"

@implementation NSArray (Category)

- (BOOL)hasValue {
    if (self && [self isKindOfClass:[NSArray class]] && [self count] > 0) {
        return YES;
    }
    return NO;
}

- (id)safeObjectAtIndex:(NSUInteger)index {
    if (index >= self.count) {
        return nil;
    }
    return [self objectAtIndex:index];
}

@end
