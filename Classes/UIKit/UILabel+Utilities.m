//
//  UILabel+Utilities.m
//
//  Created by zxm on 16/2/20.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "UILabel+Utilities.h"
#import "NSString+Category.h"

@implementation UILabel (Utilities)

- (instancetype)initWithText:(NSString *)text Font:(UIFont *)font {
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setTextColor:[UIColor blackColor]];
        [self setFont:font];
        [self setText:text];
    }
    return self;
}

- (instancetype)initWithFont:(UIFont *)font {
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setTextColor:[UIColor blackColor]];
        [self setFont:font];
    }
    return self;
}

- (void)alignTop {
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    double finalHeight = fontSize.height *self.numberOfLines;
    double finalWidth =self.frame.size.width;//expected width of label
    CGSize theStringSize =[self.text boundingRectWithSize:CGSizeMake(finalWidth, finalHeight) andFont:self.font];
    int newLinesToPad =(finalHeight - theStringSize.height)/ fontSize.height;
    for(int i=0; i<newLinesToPad; i++)
        self.text =[self.text stringByAppendingString:@"\n "];
}

- (void)alignBottom {
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    double finalHeight = fontSize.height *self.numberOfLines;
    double finalWidth =self.frame.size.width;//expected width of label
    CGSize theStringSize =[self.text boundingRectWithSize:CGSizeMake(finalWidth, finalHeight) andFont:self.font];
    int newLinesToPad =(finalHeight - theStringSize.height)/ fontSize.height;
    for(int i=0; i<newLinesToPad; i++)
        self.text =[NSString stringWithFormat:@" \n%@",self.text];
}

@end
