//
//  UIColor+NRCColor.m
//  NewRetailCliend
//
//  Created by wenzheng on 2019/4/27.
//  Copyright © 2019 wenzheng. All rights reserved.
//

#import "UIColor+NRCColor.h"

@implementation UIColor (NRCColor)

//16进制颜色(html颜色值)字符串转为UIColor
+(UIColor *)getColorWithHexString:(NSString *)stringToConvert alpha:(CGFloat)alpha {
    //删除字符串中的空格
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    if ([cString length] < 6)
    {
        return [UIColor blackColor];
    }
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"])
    {
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"])
    {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6)
    {
        return [UIColor blackColor];
    }
	
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
	
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
	
}

//默认alpha值为1
+ (UIColor *)getColorWithHexString:(NSString *)stringToConvert {
    return [self getColorWithHexString:stringToConvert alpha:1.0f];
}

+ (instancetype)bm_colorGradientChangeWithSize:(CGSize)size
									 direction:(IHGradientChangeDirection)direction
									startColor:(UIColor *)startcolor
									  endColor:(UIColor *)endColor {
	
	if (CGSizeEqualToSize(size, CGSizeZero) || !startcolor || !endColor) {
		return nil;
	}
	
	CAGradientLayer *gradientLayer = [CAGradientLayer layer];
	gradientLayer.frame = CGRectMake(0, 0, size.width, size.height);
	
	CGPoint startPoint = CGPointZero;
	if (direction == IHGradientChangeDirectionDownDiagonalLine) {
		startPoint = CGPointMake(0.0, 1.0);
	}
	gradientLayer.startPoint = startPoint;
	
	CGPoint endPoint = CGPointZero;
	switch (direction) {
		case IHGradientChangeDirectionLevel:
			endPoint = CGPointMake(1.0, 0.0);
			break;
		case IHGradientChangeDirectionVertical:
			endPoint = CGPointMake(0.0, 1.0);
			break;
		case IHGradientChangeDirectionUpwardDiagonalLine:
			endPoint = CGPointMake(1.0, 1.0);
			break;
		case IHGradientChangeDirectionDownDiagonalLine:
			endPoint = CGPointMake(1.0, 0.0);
			break;
		default:
			break;
	}
	gradientLayer.endPoint = endPoint;
	
	gradientLayer.colors = @[(__bridge id)startcolor.CGColor, (__bridge id)endColor.CGColor];
	UIGraphicsBeginImageContext(size);
	[gradientLayer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return [UIColor colorWithPatternImage:image];
}
@end
