//
//  NSString+Category.m
//
//  Created by zxm on 16/2/20.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "NSString+Category.h"

@implementation NSString (Category)

- (CGSize)boundingRectWithSize:(CGSize)size andFont:(UIFont *)font {
    
    CGSize stringSize = [self boundingRectWithSize:size options:(NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin| NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName:font} context:nil].size;
    return stringSize;
}

- (CGSize)boundingRectWithFont:(UIFont *)font {
    
    CGSize stringSize = [self sizeWithAttributes:@{NSFontAttributeName:font}];
    return stringSize;
}

- (BOOL)isPureInt:(NSString*)string {
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}

- (NSString *)encodeURL {
    NSString *newString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes( kCFAllocatorDefault, (CFStringRef)self, NULL, CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"),kCFStringEncodingUTF8));
    if (newString) {
        return newString;
    }
    return @"";
}

- (NSString *)decodedURL {
    NSString *decodedString=(__bridge_transfer NSString *)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL, (__bridge CFStringRef)self, CFSTR(""), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    return decodedString;
}

- (NSString*)utf8encoding {
    return [NSString stringWithCString:[self cStringUsingEncoding:NSUTF8StringEncoding] encoding:NSNonLossyASCIIStringEncoding];
}

@end

@implementation NSAttributedString (Category)

- (CGSize)boundingRectWithSize:(CGSize)size {
    CGSize stringSize = [self boundingRectWithSize:size options:(NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin| NSStringDrawingUsesFontLeading) context:nil].size;
    return stringSize;
}

@end
