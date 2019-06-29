//
//  UIColor+NRCColor.h
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/27.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/**
 渐变方式
 
 - IHGradientChangeDirectionLevel:              水平渐变
 - IHGradientChangeDirectionVertical:           竖直渐变
 - IHGradientChangeDirectionUpwardDiagonalLine: 向下对角线渐变
 - IHGradientChangeDirectionDownDiagonalLine:   向上对角线渐变
 */
typedef NS_ENUM(NSInteger, IHGradientChangeDirection) {
	IHGradientChangeDirectionLevel,
	IHGradientChangeDirectionVertical,
	IHGradientChangeDirectionUpwardDiagonalLine,
	IHGradientChangeDirectionDownDiagonalLine,
};

@interface UIColor (NRCColor)

+ (UIColor *)getColorWithHexString: (NSString *)stringToConvert;

/**
 *  可定义透明度
 *
 *  @param stringToConvert 十六进制颜色值
 *  @param alpha           颜色的透明度[0,1]
 *
 *  @return RGB颜色
 */
+(UIColor *)getColorWithHexString:(NSString *)stringToConvert alpha:(CGFloat)alpha;

/**
 创建渐变颜色
 
 @param size       渐变的size
 @param direction  渐变方式
 @param startcolor 开始颜色
 @param endColor   结束颜色
 
 @return 创建的渐变颜色
 */
+ (instancetype)bm_colorGradientChangeWithSize:(CGSize)size
									 direction:(IHGradientChangeDirection)direction
									startColor:(UIColor *)startcolor
									  endColor:(UIColor *)endColor;

@end

NS_ASSUME_NONNULL_END
