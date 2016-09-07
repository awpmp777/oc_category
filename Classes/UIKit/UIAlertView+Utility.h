//
//  UIAlertView+Utility.h
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Utility)

// 显示对话框
+ (void)showAlertView:(NSString *)title message:(NSString *)message delgt:(id)delgt cancelTitle:(NSString *)cancelTitle otherTilte:(NSString *)otherTitle;

// 显示对话框
+ (void)showAlertView:(NSString *)title message:(NSString *)message delgt:(id)delgt cancelTitle:(NSString *)cancelTitle otherTilte:(NSString *)otherTitle andTag:(NSInteger)initTag;

@end
