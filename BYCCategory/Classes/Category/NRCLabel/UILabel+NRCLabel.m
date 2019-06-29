//
//  UILabel+NRCLabel.m
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/28.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import "UILabel+NRCLabel.h"

@implementation UILabel (NRCLabel)
+ (instancetype)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backGroundColor:(UIColor *)backGroundColor superView:(UIView *)superView
{
	UILabel *label = [[UILabel alloc] init];
	label.textAlignment = NSTextAlignmentLeft;
	label.textColor = textColor;
	label.backgroundColor = backGroundColor;
	label.font = font;
	label.text = text;
	[superView addSubview:label];
	label.numberOfLines = 1;
	return label;
}

@end
