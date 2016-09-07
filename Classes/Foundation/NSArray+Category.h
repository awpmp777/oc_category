//
//  NSArray+Category.h
//

#import <Foundation/Foundation.h>

@interface NSArray (Category)

/**
 *  是否有值
 *
 *  @return YES or NO
 */
- (BOOL)hasValue;

- (id)safeObjectAtIndex:(NSUInteger)index;

@end
