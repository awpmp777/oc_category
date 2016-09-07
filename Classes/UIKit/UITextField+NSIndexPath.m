//
//  UITextField+NSIndexPath.m
//  ZXMSupervisor
//
//  Created by zxm on 16/8/10.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "UITextField+NSIndexPath.h"
#import <objc/runtime.h>

const static char *TableViewCellIndexPathKey = "TableViewCellIndexPathKey";

@implementation UITextField (NSIndexPath)

- (void)setIndexPath:(NSIndexPath *)indexPath {
    objc_setAssociatedObject(self, TableViewCellIndexPathKey, indexPath, OBJC_ASSOCIATION_RETAIN);
}

- (NSIndexPath *)indexPath {
    id obj = objc_getAssociatedObject(self, TableViewCellIndexPathKey);
    
    if ([obj isKindOfClass:[NSIndexPath class]])
    {
        return (NSIndexPath *)obj;
    }
    
    return nil;
}

@end
