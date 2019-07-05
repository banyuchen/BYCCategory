//
//  NSString+NRCString.h
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/28.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (NRCString)

/**
 *  计算文字尺寸
 *
 *  @param text    需要计算尺寸的文字
 *  @param font    文字的字体
 *  @param maxSize 文字的最大尺寸
 */
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize;

/**
 不同颜色的文字
 
 @param title 不同颜色的文字
 @param normalTitle 后面的文字
 @param frontTitle 前面的文字
 @param color 不同的颜色
 @return 不同颜色的文字
 */
+ (NSMutableAttributedString *)attributedStringWithColorTitle:(NSString *)title normalTitle:(NSString *)normalTitle frontTitle:(NSString *)frontTitle diffentColor:(UIColor *)color;

/**
 不同颜色不同大小的文字
 
 @param title 不同颜色的文字
 @param normalTitle 后面的文字
 @param frontTitle 前面的文字
 @param normalColor 默认的文字颜色
 @param color 不同的文字颜色
 @param normalFont 默认的字体大小
 @param font 不同的字体大小
 @return 不同颜色不同大小的文字
 */
+ (NSMutableAttributedString *)attributedStringWithColorTitle:(NSString *)title normalTitle:(NSString *)normalTitle frontTitle:(NSString *)frontTitle normalColor:(UIColor *)normalColor diffentColor:(UIColor *)color normalFont:(UIFont *)normalFont differentFont:(UIFont *)font;


/**
 4种不同颜色的文字
 
 @param firstTitle 1
 @param secrondTitle 2
 @param thirdTitle 3
 @param fourTitle 4
 @param firstColor 1c
 @param secrondColor 2c
 @param thirdColor 3c
 @param fourColor 4c
 @return NSMutableAttributedString
 */
+ (NSMutableAttributedString *)attributedStringWithFirstTitle:(NSString *)firstTitle secrondTitle:(NSString *)secrondTitle thirdTitle:(NSString *)thirdTitle fourTitle:(NSString *)fourTitle firstColor:(UIColor *)firstColor secrondColor:(UIColor *)secrondColor thirdColor:(UIColor *)thirdColor fourColor:(UIColor *)fourColor;


/**
 4种不同颜色不同字体的文字
 
 @param firstTitle 1
 @param secrondTitle 2
 @param thirdTitle 3
 @param fourTitle 4
 @param firstColor 1c
 @param secrondColor 2c
 @param thirdColor 3c
 @param fourColor 4c
 @return NSMutableAttributedString
 */
+ (NSMutableAttributedString *)attributedStringWithFirstTitle:(NSString *)firstTitle secrondTitle:(NSString *)secrondTitle thirdTitle:(NSString *)thirdTitle fourTitle:(NSString *)fourTitle firstColor:(UIColor *)firstColor secrondColor:(UIColor *)secrondColor thirdColor:(UIColor *)thirdColor fourColor:(UIColor *)fourColor firstFont:(UIFont *)firstFont secondFont:(UIFont *)secondFont thirdFont:(UIFont *)thirdFont fourFont:(UIFont *)fourFont;


/**
 5种不同颜色的文字
 
 @param firstTitle 1
 @param secrondTitle 2
 @param thirdTitle 3
 @param fourTitle 4
 @param fifthTitle 5
 @param firstColor 1c
 @param secrondColor 2c
 @param thirdColor 3c
 @param fourColor 4c
 @param fifthColor 5c
 @return <#return value description#>
 */
+ (NSMutableAttributedString *)attributedStringWithFirstTitle:(NSString *)firstTitle secrondTitle:(NSString *)secrondTitle thirdTitle:(NSString *)thirdTitle fourTitle:(NSString *)fourTitle fifthTitle:(NSString *)fifthTitle firstColor:(UIColor *)firstColor secrondColor:(UIColor *)secrondColor thirdColor:(UIColor *)thirdColor fourColor:(UIColor *)fourColor fifthColor:(UIColor *)fifthColor;

/**
 带有图片的富文本文字
 
 @param title 图前的文字
 @param behindText 图后的文字
 @param imageName 图的name
 @return 富文本文字
 */
+ (NSMutableAttributedString *)attributeWithTitle:(NSString *)title behindText:(NSString *)behindText imageName:(NSString *)imageName attchY:(CGFloat)attchY;

/**
 带有图片(居中)的富文本文字
 
 @param title 图前的文字
 @param behindText 图后的文字
 @param imageName 图的name
 @return 富文本文字
 */
+ (NSMutableAttributedString *)attributeWithTitle:(NSString *)title behindText:(NSString *)behindText centerImageName:(NSString *)imageName height:(CGFloat)height;

/**
 *  @brief NSDictionary转换成JSON字符串
 *
 *  @return  JSON字符串
 */
+ (NSString *)JSONString:(id)data;

/**
 获取允许的宽度
 
 @param maxWidth 显示允许的最大宽度
 @param font 字体大小
 @return 显示需要的宽度
 */
+ (CGFloat)ttConfirmLabelWidthWithMaxWidth:(CGFloat)maxWidth font:(UIFont *)font string:(NSString *)string;

/**
 *  判断字符串是否为空
 */
+ (BOOL)isBlankString:(NSString *)aStr;

/**
 * 隐藏手机号码中间的四位数字
 */
+ (NSString *)numberSuitScanf:(NSString*)number;

// 获取 bundle version版本号
+ (NSString*) getLocalAppVersion;

//获取BundleID
+ (NSString*) getBundleID;

// 获取app的名字
+ (NSString*) getAppName;

@end

NS_ASSUME_NONNULL_END
