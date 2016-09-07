//
//  UIButton+NSIndexPath.m
//

#import "UIButton+NSIndexPath.h"
#import <objc/runtime.h>

const static char *TableViewCellIndexPathKey = "TableViewCellIndexPathKey";

@implementation UIButton (NSIndexPath)

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
