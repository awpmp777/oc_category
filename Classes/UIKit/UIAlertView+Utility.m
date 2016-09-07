//
//  UIAlertView+Utility.m
//

#import "UIAlertView+Utility.h"

@implementation UIAlertView (Utility)

// 显示对话框
+ (void)showAlertView:(NSString *)title message:(NSString *)message delgt:(id)delgt cancelTitle:(NSString *)cancelTitle otherTilte:(NSString *)otherTitle
{
	if (otherTitle != nil)
	{
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
															message:message
														   delegate:delgt
												  cancelButtonTitle:cancelTitle
												  otherButtonTitles:otherTitle, nil];
		[alertView show];
	}
	else
	{
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
															message:message
														   delegate:delgt
												  cancelButtonTitle:cancelTitle
												  otherButtonTitles:nil];
		[alertView show];
	}
}

// 显示对话框
+ (void)showAlertView:(NSString *)title message:(NSString *)message delgt:(id)delgt cancelTitle:(NSString *)cancelTitle otherTilte:(NSString *)otherTitle andTag:(NSInteger)initTag
{
	if(otherTitle != nil)
	{
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
															message:message
														   delegate:delgt
												  cancelButtonTitle:cancelTitle
												  otherButtonTitles:otherTitle, nil];
		[alertView setTag:initTag];
		[alertView show];
	}
	else
	{
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
															message:message
														   delegate:delgt
												  cancelButtonTitle:cancelTitle
												  otherButtonTitles:nil];
		[alertView setTag:initTag];
		[alertView show];
	}
}

@end
