//
//  NSString+Category.h
//
//  Created by zxm on 16/2/20.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Category)

- (CGSize)boundingRectWithSize:(CGSize)size andFont:(UIFont *)font;
- (CGSize)boundingRectWithFont:(UIFont *)font;

- (BOOL)isPureInt:(NSString *)string;

- (NSString *)encodeURL;
- (NSString *)decodedURL;
- (NSString *)utf8encoding;

@end

@interface NSAttributedString (Category)

- (CGSize)boundingRectWithSize:(CGSize)size;

@end
