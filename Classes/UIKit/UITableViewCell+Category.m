//
//  UITableViewCell+Category.m
//  ZXMSupervisor
//
//  Created by zxm on 16/8/1.
//  Copyright © 2016年 zxm. All rights reserved.
//

#import "UITableViewCell+Category.h"
#import "UIColor+Utilities.h"

#define kUITableViewMargin    10

@implementation UITableViewCell (Category)

- (void)setLineInTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath {
    UIView *line = [self viewWithTag:999];
    if (!line) {
        line = [[UIView alloc] init];
        [line setBackgroundColor:[UIColor hexStringToColor:@"#dadada"]];
        [line setFrame:CGRectMake(kUITableViewMargin, self.frame.size.height-(1.0f/[UIScreen mainScreen].scale), ([[UIScreen mainScreen] bounds].size.width)-kUITableViewMargin*2, (1.0f/[UIScreen mainScreen].scale))];
        line.tag = 999;
        [self addSubview:line];
    }
    line.hidden = YES;
    if ([tableView.dataSource tableView:tableView numberOfRowsInSection:[indexPath section]] > 1) {
        if (indexPath.row != [tableView numberOfRowsInSection:indexPath.section] - 1) {
            line.hidden = NO;
        }
    }
}

@end
