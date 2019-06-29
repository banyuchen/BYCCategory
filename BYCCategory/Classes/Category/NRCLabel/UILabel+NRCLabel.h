//
//  UILabel+NRCLabel.h
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/28.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (NRCLabel)
/**
 创建一个label
 
 @param text 内容
 @param font 字体大小
 @param textColor 字体颜色
 @param backGroundColor 背景颜色
 @param superView 添加的父控件
 @return 返回一个label
 */
+ (instancetype)labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backGroundColor:(UIColor *)backGroundColor superView:(UIView *)superView;

@end

NS_ASSUME_NONNULL_END
