//
//  UIImage+Category.h
//
//  Created by zxm on 16/5/19.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Category)

- (UIImage *)transformWidth:(CGFloat)width
                     height:(CGFloat)height;

- (UIImage *)stretchableImageWidth:(NSInteger)width;

- (UIImage *)fixOrientation;

@end
